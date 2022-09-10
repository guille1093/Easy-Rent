package com.unam.poo.controllers;

import com.unam.poo.models.Usuario;
import com.unam.poo.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("/register")
@Controller
public class RegisterController {
    @Autowired
    UsuarioService usuarioService;
    @GetMapping ("/registerload")
    public String registerload() {
        return "register";
    }

    @PostMapping("/newregister")
    public String register(@ModelAttribute("usuario") Usuario usuario) {
        usuarioService.saveUsuario(usuario);
        return "register";
    }
}
