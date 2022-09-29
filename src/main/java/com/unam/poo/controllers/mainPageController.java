package com.unam.poo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mainpage")
public class mainPageController {
    @RequestMapping(value = "/")
    public String ShowMainPage(){
        return "welcome";
    }
}
