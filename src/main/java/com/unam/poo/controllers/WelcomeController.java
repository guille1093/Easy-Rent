package com.unam.poo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
//import the welcome page
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomeController {
    @RequestMapping(value = "/")
    @GetMapping("/")
    public String ShowLogin(){
        return "authLogin";
    }
}
