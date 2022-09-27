package com.unam.poo.controllers.auth;

import com.unam.poo.models.Usuario;
import com.unam.poo.services.UsuarioService;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/register")
@Controller
public class RegisterController {

    //esto es lo mismo que usar el @Autowired pero de forma manual y deja de dar la advertencia
    final
    UsuarioService usuarioService;

    public RegisterController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @GetMapping ("/authRegister")
    public String registerload() {
        return "authRegister";
    }

    @PostMapping("/newRegister")
    public String register(@ModelAttribute("usuario") Usuario usuario) {
        usuarioService.saveUsuario(usuario);
        return "register";
    }

}
