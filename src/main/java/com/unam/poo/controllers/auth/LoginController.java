package com.unam.poo.controllers.auth;
import com.unam.poo.controllers.PanelUsrController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/auth/login")
public class LoginController {
    @Autowired
    PanelUsrController panelUsrController;

    
    
    @GetMapping("/")
    public String loginload() {
        return "authLogin";
    }

    
//    public String loginredirect () {
//        Model m
//        return panelUsrController.panelUsr();}
}