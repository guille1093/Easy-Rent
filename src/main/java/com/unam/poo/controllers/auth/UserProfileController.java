package com.unam.poo.controllers.auth;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserProfileController {
    @GetMapping("/profile")
    public String userProfile(){
        return "userProfile";
    }
}
