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
        services.add(new Service("نصب کاغذ دیواری","نصب کاغذ دیواری"));
        services.add(new Service("کابینت","نصب کابینت"));
        services.add(new Service("طراحی و دکوراسیون","طراحی و دکوراسیون داخلی"));
        services.add(new Service("نقاشی ساختمان","رنگ و نقاشی ساختمان"));
        services.add(new Service("تعمیر کار","تعمیرکار یخچال"));
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
     */
    @RequestMapping(value = "contact-us",method = RequestMethod.GET)
    public String contactUs(){
        return "contact-us";
    }

}
