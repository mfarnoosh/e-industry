package com.bazaribaz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by dorsa on 12/1/16.
 */
@Controller
@RequestMapping({"/home","/"})
public class HomeController {
    @RequestMapping(method = RequestMethod.GET)
    public String viewHome(){
        return "home";
    }
}
