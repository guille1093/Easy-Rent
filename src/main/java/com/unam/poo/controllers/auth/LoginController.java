package com.unam.poo.controllers.auth;
import com.unam.poo.controllers.PanelUsrController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @Autowired
    PanelUsrController panelUsrController;
    @GetMapping("/login")
    public String loginload() {
        return "authLogin";
    }

//    public String loginredirect () {
//        Model m
//        return panelUsrController.panelUsr();}
}