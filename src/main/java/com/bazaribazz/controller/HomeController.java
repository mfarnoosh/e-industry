package com.bazaribazz.controller;

import com.bazaribazz.dao.Service;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dorsa on 12/3/16.
 */
@Controller
@RequestMapping({"home","/"})
public class HomeController {

    private static List<Service> services = new ArrayList<Service>();

    static {
        services.add(new Service("Install Wallpaper"));
        services.add(new Service("Painting walls"));
        services.add(new Service("Install Wallpaper"));
    }

    @RequestMapping(method = RequestMethod.GET)
    public String viewHome(){
        return "home";
    }
}
