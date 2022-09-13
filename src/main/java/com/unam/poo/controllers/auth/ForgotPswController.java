package com.unam.poo.controllers.auth;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/forgotpsw")
public class ForgotPswController {
    @GetMapping("/")
    public String forgotpswload() {
        return "authForgotPsw";
    }
}
