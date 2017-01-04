package com.bazaribazz.controller;

import com.bazaribazz.model.Product;
import com.bazaribazz.model.Service;
import com.bazaribazz.view.ProductForm;
import com.bazaribazz.view.ServiceForm;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by dorsa on 12/3/16.
 */
@Controller
public class HomeController {

    private static List<Service> services = new ArrayList<Service>();
private static List<Product> products = new ArrayList<Product>();

    static {
        services.add(new Service("نصب کاغذ دیواری","نصب کاغذ دیواری","تهران"));
        services.add(new Service("کابینت","نصب کابینت","تهران"));
        services.add(new Service("طراحی و دکوراسیون","طراحی و دکوراسیون داخلی","کرج"));
        services.add(new Service("نقاشی ساختمان","رنگ و نقاشی ساختمان","کرج"));
        services.add(new Service("تعمیر کار","تعمیرکار یخچال","تهران"));
    }

    static {
        products.add(new Product("یخچال","شرکت ...","سامسونگ","s123",2000));
        products.add(new Product("کولر","شرکت ...","آبسال","c443",1000));
    }
    /**
     * Home
     * @param model
     * @return
     */

    @RequestMapping(value = {"/","home"},method = {RequestMethod.GET,RequestMethod.POST})
    public String viewHome(Model model){
        ServiceForm serviceForm = new ServiceForm();
        serviceForm.setServices(services);
        model.addAttribute("myservice",serviceForm.getServices());

        ProductForm productForm = new ProductForm();
        productForm.setProducts(products);
        model.addAttribute("myproduct",productForm.getProducts());
        return "home";
    }

    /**
     * Searching Itams
     * @param serviceName
     * @param model
     * @return
     */
    @RequestMapping(value = "search", method = RequestMethod.GET)
    public String search(@RequestParam("srch") String serviceName,Model model){
        List<Service> sr = searchResult(serviceName);
        model.addAttribute("shj",sr);
        return "search";
    }
    private List<Service> searchResult(String name){
        List<Service> result = new ArrayList<Service>();
        for (Service se : services){
            if (se.getServiceName().contains(name)){
                result.add(se);
            }
        }
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

    /**
     * Service add form
     * @return
     */
    @RequestMapping(value = "admin/new-service", method = RequestMethod.GET)
    public String addService(){
        return "new-service";
    }

    /**
     * Add product page
     * @return
     */
    @RequestMapping(value = "admin/new-product", method = RequestMethod.GET)
    public String addProduct(){
        return "new-product";
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
    public String transactionResponse(@ModelAttribute("uploadForm") Service service,
                                      Model map) throws IllegalStateException, IOException{
        String saveDirectory = "/home/dorsa/testfile/";

        MultipartFile image = service.getImageFile();

        List<String> fileNames = new ArrayList<String>();

        if (null != image && image.getSize() > 0) {
            String fileName = image.getOriginalFilename();
            if (!"".equalsIgnoreCase(fileName)) {
                // Handle file content - multipartFile.getInputStream()
                image.transferTo(new File(saveDirectory + fileName));
                fileNames.add(fileName);
            }
        }

        map.addAttribute("files", fileNames);

        return "success";
    }

    /**
     * Login page
     * @return
     */
    @RequestMapping(value = "login",method = RequestMethod.GET)
    public String loginPage(){
        return "login";
    }

    /**
     * Sign up page
     *
     * @return
     */
    @RequestMapping(value = "sign-up",method = RequestMethod.GET)
    public String signUp(){
        return "sign-up";
    }

    @RequestMapping(value = "admin",method = RequestMethod.GET)
    public String adminPage(ModelMap model){
        model.addAttribute("user", getPrincipal());
        return "admin";
    }
    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) {
        model.addAttribute("user", getPrincipal());
        return "accessDenied";
    }
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

    @RequestMapping(value = "admin/services",method = RequestMethod.GET)
    public String servicesPage(){
        return "services";
    }
    @RequestMapping(value = "admin/products",method = RequestMethod.GET)
    public String productsPage(){
        return "products";
    }
    @RequestMapping(value = "admin/users",method = RequestMethod.GET)
    public String usersPage(){
        return "users";
    }
}
