package com.bazaribazz.controller;

import com.bazaribazz.model.Service;
import com.bazaribazz.view.ServiceForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by dorsa on 12/3/16.
 */
@Controller

public class HomeController {
@Autowired
    private static List<Service> services = new ArrayList<Service>();

    static {
        services.add(new Service("Install Wallpaper","Name and Family"));
        services.add(new Service("Painting walls","Name and Family"));
        services.add(new Service("Install Wallpaper","Name and Family"));
    }

    /**
     * Home
     * @return
     */

    @RequestMapping(value = {"/","home"},method = {RequestMethod.GET,RequestMethod.POST})
    public String viewHome(){
        ServiceForm serviceForm = new ServiceForm();
        serviceForm.setServices(services);
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
    @RequestMapping(value = "about-us", method = RequestMethod.GET)
    public String about_us(){
        return "about-us";
    }
}
