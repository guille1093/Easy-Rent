package com.unam.poo.controllers.auth;
import com.unam.poo.controllers.PanelUsrController;
import com.unam.poo.dto.LoginDto;
import com.unam.poo.models.Usuario;
import com.unam.poo.services.UsuarioService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
 
@Controller
public class LoginController { 

    @Autowired
    UsuarioService usuarioService; 
    
    @Autowired
    PasswordEncoder passwordEncoder;

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
          return "Error";
        }  
        try { 
            Usuario user = usuarioService.getUsuarioByCorreo(loginDto.getCorreo().toString()); 
            if (user != null){  
                if (passwordEncoder.matches(loginDto.getContraseña(), user.getContraseña())){
                    //Coinciden entonces:
                    System.out.println("AUTENTICADO: Redireccionando...");
                    return "authLogin";
                }else{
                    System.out.println("ERROR: Contraseña incorrecta");
                    return "ERROR: Contraseña incorrecta";
                }
            }else{
                System.out.println("ERROR: Usuario no registrado");
                return "ERROR: Usuario no registrado";
            } 
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            return "ERROR: " + e.getMessage();
        }


    }
}