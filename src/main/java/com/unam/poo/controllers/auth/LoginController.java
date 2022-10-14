package com.unam.poo.controllers.auth;
import com.unam.poo.controllers.PanelUsrController;
import com.unam.poo.dto.LoginDto;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
   
    //@Autowired
    //AuthenticationManager authenticationManager;

    @Autowired
    PanelUsrController panelUsrController;

    @GetMapping("/login")
    public String loginload() {
        return "authLogin";
    } 

//    public String loginredirect () {
//        Model m
//        return panelUsrController.panelUsr();}

    @PostMapping("/login")
    public String login(@Validated @ModelAttribute("LoginDto") LoginDto loginDto, BindingResult result) {
        if (result.hasErrors()) {
            //aca deberia ir una pagina de error o algo xd
          return "authLogin";
        }  
        try {
            //Authentication auth = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(loginDto.getMail(), loginDto.getContraseña()));
            //System.out.println(auth);
            //SecurityContextHolder.getContext().setAuthentication(auth);
            return "authLogin";
        } catch (Exception e) {
            return "ERROR: " + e.getMessage();
        }


    }
}