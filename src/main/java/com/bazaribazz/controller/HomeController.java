package com.bazaribazz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by dorsa on 12/3/16.
 */
@Controller
@RequestMapping({"home","/"})
public class HomeController {
    @RequestMapping(method = RequestMethod.GET)
    public String viewHome(){
        return "home";
    }
}
