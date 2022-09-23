package com.unam.poo.controllers.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth/register")
public class RegisterController {

    @GetMapping ("/")
    public String registerload() {
        return "authRegister";
    }
    
}
