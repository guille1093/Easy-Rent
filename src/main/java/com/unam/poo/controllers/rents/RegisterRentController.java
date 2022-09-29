package com.unam.poo.controllers.rents;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rents")
public class RegisterRentController {
    @RequestMapping(value = "/register")
    public String RegisterRent(){
        return "registerRent";
    }
}
