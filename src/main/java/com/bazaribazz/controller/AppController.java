package com.bazaribazz.controller;

import com.bazaribazz.dao.FileUploadDao;
import com.bazaribazz.model.*;
import com.bazaribazz.service.CategoryService;
import com.bazaribazz.service.UserProfileService;
import com.bazaribazz.service.UserService;
import com.bazaribazz.service.WorkService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.io.*;

import java.util.*;
import java.util.List;

/**
 * Created by dorsa on 1/15/17.
 */
@Controller
//@RequestMapping("/")
@SessionAttributes("roles")
public class AppController {

    @Autowired
    UserService userService;
    @Autowired
    UserProfileService userProfileService;

    @Autowired
    PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

    @Autowired
    AuthenticationTrustResolver authenticationTrustResolver;

    @Autowired
    MessageSource messageSource;

    @Autowired
    WorkService workService;

    @Autowired
    private FileUploadDao fileUploadDao;

    @Autowired
    private CategoryService categoryService;




    @RequestMapping(value = {"list","admin/users"}, method = RequestMethod.GET)
    public String listUsers(ModelMap model) {
        List<User> users = userService.findAllUsers();
        for(User user:users){
            user.setUserRole(user.getUserProfiles().toString().split("\\[")[2].split("=")[2].split("\\]")[0]);
        }
//        model.addAttribute("userRole",str);
        model.addAttribute("users", users);
        model.addAttribute("loggedinuser", getPrincipal());
        return "users";
    }

    @RequestMapping(value = { "newuser","admin/newuser" }, method = RequestMethod.GET)
    public String newUser(ModelMap model) {
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("edit", false);
        model.addAttribute("loggedinuser", getPrincipal());
        return "registration";
    }

    /**
     * This method will be called on form submission, handling POST request for
     * saving user in database. It also validates the user input
     */
    @RequestMapping(value = { "newuser","admin/newuser" }, method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result, ModelMap model) {

        // Get select element string and set userProfiles
        String[] mm = user.getUserRole().split(",");
        Set<UserProfile> us=new HashSet<>();
        us.add(userProfileService.findById(Integer.parseInt(mm[0])));
        user.setUserProfiles(us);

        if (result.hasErrors()) {
            System.out.println("There are errors");
            return "registration";
        }

        /*
         * Preferred way to achieve uniqueness of field [sso] should be implementing custom @Unique annotation
         * and applying it on field [sso] of Model class [User].
         *
         * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
         * framework as well while still using internationalized messages.
         *
         */
        if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
            FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
            result.addError(ssoError);
            return "registration";
        }

        userService.saveUser(user);

        model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " registered successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        //return "success";
        return "login";
    }

    /**
     * This method will provide the medium to update an existing user.
     */
    @RequestMapping(value = { "admin/edit-user-{ssoId}" }, method = RequestMethod.GET)
    public String editUser(@PathVariable String ssoId, ModelMap model) {
        User user = userService.findBySSO(ssoId);
        model.addAttribute("user", user);
        model.addAttribute("edit", true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "registration";
    }

    /**
     * This method will be called on form submission, handling POST request for
     * updating user in database. It also validates the user input
     */
    @RequestMapping(value = { "edit-user-{ssoId}" }, method = RequestMethod.POST)
    public String updateUser(@Valid User user, BindingResult result,
                             ModelMap model, @PathVariable String ssoId) {

        if (result.hasErrors()) {
            return "registration";
        }

		/*//Uncomment below 'if block' if you WANT TO ALLOW UPDATING SSO_ID in UI which is a unique key to a User.
		if(!userService.isUserSSOUnique(user.getId(), user.getSsoId())){
			FieldError ssoError =new FieldError("user","ssoId",messageSource.getMessage("non.unique.ssoId", new String[]{user.getSsoId()}, Locale.getDefault()));
		    result.addError(ssoError);
			return "registration";
		}*/


        userService.updateUser(user);

        model.addAttribute("success", "User " + user.getFirstName() + " "+ user.getLastName() + " updated successfully");
        model.addAttribute("loggedinuser", getPrincipal());
        return "login";
    }


    /**
     * This method will delete an user by it's SSOID value.
     */
    @RequestMapping(value = { "delete-user-{ssoId}" }, method = RequestMethod.GET)
    public String deleteUser(@PathVariable String ssoId) {
        userService.deleteUserBySSO(ssoId);
        return "redirect:admin";
    }

    /**
     * This method will provide UserProfile list to views
     */
    @ModelAttribute("roles")
    public List<UserProfile> initializeProfiles() {
        return userProfileService.findAll();
    }

    /*@RequestMapping("newuser")
    public  List<UserProfile> initroles(Map map){

        map.put("roles",userProfileService.findAll());
        return userProfileService.findAll();
    }*/

    /**
     * This method handles Access-Denied redirect.
     */
    @RequestMapping(value = "Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("loggedinuser", getPrincipal());
        return "accessDenied";
    }

    /**
     * This method handles login GET requests.
     * If users is already logged-in and tries to goto login page again, will be redirected to list page.
     */
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String loginPage() {
        if (isCurrentAuthenticationAnonymous()) {
            return "login";
        } else {
            return "redirect:admin";
        }
    }

    /**
     * This method handles logout requests.
     * Toggle the handlers if you are RememberMe functionality is useless in your app.
     */
    @RequestMapping(value="logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
//            new SecurityContextLogoutHandler().logout(request, response, auth);
            persistentTokenBasedRememberMeServices.logout(request, response, auth);
            SecurityContextHolder.getContext().setAuthentication(null);
        }
        return "redirect: login?logout";
    }

    /**
     * This method returns the principal[user-name] of logged-in user.
     */
    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof UserDetails) {
            userName = ((UserDetails)principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }
    /**
     * This method returns true if users is already authenticated [logged-in], else false.
     */
    private boolean isCurrentAuthenticationAnonymous() {
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authenticationTrustResolver.isAnonymous(authentication);
    }


    /**
     * Home controller
     */

    /**
     * Home
     * @param model
     * @return
     */
    String imag;
    @RequestMapping(value = {"/","home"},method = {RequestMethod.GET,RequestMethod.POST})
    public String viewHome(ModelMap model){
//        ServiceForm serviceForm = new ServiceForm();
//        serviceForm.setWorks(works);
//        model.addAttribute("myservice",serviceForm.getWorks());
        List<Work> works = workService.findAllWorks();
//        List<UploadFile> uploadFiles = fileUploadDao.findAll();

        for (Work w: works){
            appendPics(w);
        }

        model.addAttribute("edit",false);
        model.addAttribute("works",works);
        model.addAttribute("loggedinuser", getPrincipal());
        return "home";
    }

    private void appendPics(Work w){
        List<UploadFile> uploadFiles = fileUploadDao.findAll();
//        for (Work w: works){
            String[] ms = new String[3];
            int i= 0;
            for (UploadFile uf: uploadFiles){
                if (uf.getWork().getId()== w.getId()){
                    imag=Base64.encode(uf.getData());
                    ms[i]=imag;
                    w.setImages(ms);
                    i++;
                }

            }
//        }
    }

    @RequestMapping(value = "admin", method = RequestMethod.GET)
    public String adminPage(ModelMap map){
        map.addAttribute("loggedinuser", getPrincipal());
        return "admin";
    }

    /**
     * Searching Itams
     * @param serviceName
     * @param model
     * @return
     */
    @RequestMapping(value = "search", method = RequestMethod.GET)
    public String search(@RequestParam("srch") String serviceName,Model model){
        List<Work> sr = searchResult(serviceName);
        List<String> professions = new ArrayList<String>();
        for (Work w: sr){
            appendPics(w);
            if (professions.size()==0){
                professions.add(w.getProfession());
            }
            if (!professions.contains(w.getProfession())){
                professions.add(w.getProfession());
            }

        }
        model.addAttribute("professions",professions);

        model.addAttribute("shj",sr);
        return "search";
    }
    private List<Work> searchResult(String name){
//        List<Work> result = workService.findByName(name);
        List<Work> result = workService.searchWork(name);
       /* for (Work se : works){
            if (se.getServiceName().contains(name)){
                result.add(se);
            }
        }*/
        return result;
    }

    /**
     * About us page
     * @return
     */
    @RequestMapping(value = "about-us", method = RequestMethod.GET)
    public String aboutUs(){
        return "about-us";
    }

    /**
     * Contact us page
     * @return
     */
    @RequestMapping(value = "contact-us",method = RequestMethod.GET)
    public String contactUs(){
        return "contact-us";
    }

    @RequestMapping(value = {"admin/new-work","new-work"}, method = RequestMethod.GET)
    public String newWork(ModelMap map,HttpServletRequest request){
        Work work = new Work();
        map.addAttribute("work",work);
        map.addAttribute("loggedinuser", getPrincipal());
        return "new-work";
    }

    /**
     * Work add form
     * @return
     */
    @RequestMapping(value = {"admin/new-work","new-work"}, method = RequestMethod.POST,headers = "Content-Type=multipart/form-data")
    public String addService(@Valid Work work,BindingResult result,ModelMap map,
                             HttpServletRequest request,
                             @RequestParam CommonsMultipartFile[] uploadFile) throws Exception{
        request.setCharacterEncoding("UTF-8");
        map.addAttribute("loggedinuser", getPrincipal());
        String username =getPrincipal();
        work.setOwner(userService.findBySSO(username));
        work.setCreateDate(new Date());
        workService.create(work);
        if (uploadFile != null && uploadFile.length > 0) {
            for (CommonsMultipartFile aFile : uploadFile){

                System.out.println("Saving file: " + aFile.getOriginalFilename());

                UploadFile upload_File = new UploadFile();
                upload_File.setFileName(aFile.getOriginalFilename());
                upload_File.setData(aFile.getBytes());
                upload_File.setWork(work);
                fileUploadDao.save(upload_File);
            }
        }
        return "new-work";
    }

    @RequestMapping(value = {"work-list","admin/work-list"},method = RequestMethod.GET)
    public String workList(ModelMap model){
        List<Work> works = workService.findAllWorks();
        model.addAttribute("edit",false);
        model.addAttribute("works",works);
        return "works";
    }

    /**
     * Add product page
     * @return
     */
    @RequestMapping(value = "admin/new-product", method = RequestMethod.GET)
    public String addProduct(ModelMap model){
        model.addAttribute("loggedinuser", getPrincipal());
        return "new-product";
    }


    @RequestMapping(value = "admin/edit-work-{workid}",method = RequestMethod.GET)
    public String editWork(@PathVariable int workid,ModelMap model){
        Work work = workService.findById(workid);
        model.addAttribute("work",work);
        model.addAttribute("edit",true);
        model.addAttribute("loggedinuser", getPrincipal());
        return "new-work";
    }

    @RequestMapping(value = "admin/edit-work-{workid}",method = RequestMethod.POST)
    public String updateWork(@Valid Work work, BindingResult result,ModelMap model,@PathVariable int workid){
        if (result.hasErrors()) {
            return "new-work";
        }
        workService.update(work);
        return "new-work";
    }

    @RequestMapping(value = "view-work-{workid}",method = RequestMethod.GET)
    public String visitWork(@PathVariable int workid,ModelMap model){
        Work work = workService.findById(workid);
        appendPics(work);
        model.addAttribute("work",work);
        model.addAttribute("edit",false);
        model.addAttribute("loggedinuser", getPrincipal());
        return "view-work";
    }

    /**
     * Get image file
     * @param service
     * @param map
     * @return to success page
     * @throws IllegalStateException
     * @throws IOException
     */
    @RequestMapping(value = "saved",method = RequestMethod.POST)
    public String transactionResponse(@ModelAttribute("uploadForm") Work service,
                                      Model map) throws IllegalStateException, IOException{
        String saveDirectory = "/home/dorsa/testfile/";

//        byte[] image = service.getImageFile();

//        List<String> fileNames = new ArrayList<String>();

//        if (null != image && image.length > 0) {
            /*String fileName = image.getOriginalFilename();
            if (!"".equalsIgnoreCase(fileName)) {
                // Handle file content - multipartFile.getInputStream()
                image.transferTo(new File(saveDirectory + fileName));
                fileNames.add(fileName);
            }*/
//        }

//        map.addAttribute("files", fileNames);

        return "success";
    }


    /*@RequestMapping(value = "admin/works",method = RequestMethod.GET)
    public String servicesPage(){
        return "works";
    }*/
    @RequestMapping(value = "admin/products",method = RequestMethod.GET)
    public String productsPage(){
        return "products";
    }


    @RequestMapping(value = "product",method = RequestMethod.GET)
    public String newProduct(ModelMap model){
        model.addAttribute("loggedinuser", getPrincipal());
        return "new-product";
    }
    /*@RequestMapping(value = "product",method = RequestMethod.POST)
    public String saveProduct(){

        return "product";
    }*/
String str;
    @RequestMapping(value = "user-panel/{ssoId}", method = RequestMethod.GET)
    public String userProfile(@PathVariable String ssoId,ModelMap model){
        User user = userService.findBySSO(ssoId);
        User currentUser = userService.findBySSO(getPrincipal());
        str=currentUser.getUserProfiles().toString().split("\\[")[2].split("=")[2].split("\\]")[0];
        model.addAttribute("loggedinuser",getPrincipal());
        List<Work> works = workService.findByOwner(currentUser);
        if (ssoId.equals(getPrincipal()) || str.equals("ADMIN")){
            model.addAttribute("user",user);
            model.addAttribute("works",works);
            return "user-panel";
        }else {
            return "accessDenied";
        }



    }

    @RequestMapping(value = {"admin/new-category"},method = RequestMethod.GET)
    public String newCategory(ModelMap model){
        Category category = new Category();
        model.addAttribute("category", category);
        model.addAttribute("edit", false);
        model.addAttribute("loggedinuser", getPrincipal());
        return "new-category";
    }
    @RequestMapping(value = {"admin/new-category","admin/category-list"},method = RequestMethod.POST)
    public String saveCategory(@Valid Category category, BindingResult result, ModelMap model){
        categoryService.insertCategory(category);
        model.addAttribute("category",category);
        return "redirect:/admin/";
    }

    @RequestMapping(value = "admin/category-list", method = RequestMethod.GET)
    public String categoryList(ModelMap model){
        List<Category> categories = categoryService.findAllCategory();
        model.addAttribute("categories",categories);
        Category category = new Category();
        model.addAttribute("category", category);
        return "category-list";
    }

    /*@RequestMapping(value = "user-panel/{uid}", method = RequestMethod.POST)
    public String findUserProfile(@Valid User user, BindingResult result,
                                  ModelMap model, @PathVariable String ssoId){
        return "user-panel";
    }*/
    @RequestMapping(value = "information-{ssoId}", method = RequestMethod.GET)
    public String showCompleteInfo(@PathVariable String ssoId, ModelMap model){
        User user = userService.findBySSO(ssoId);
        model.addAttribute("user",user);
        return "user-form-info";
    }
    @RequestMapping(value = "information-{ssoId}", method = RequestMethod.POST)
    public String saveCompleteInfo(){
        return "user-form-info";
    }
}