package com.unam.poo.controllers;

import com.unam.poo.models.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import usuarioService;
import com.unam.poo.services.UsuarioService;

import java.util.List;


@Controller
@RequestMapping("/panel")
public class PanelUsrController {
    @Autowired UsuarioService usuarioService;
    @GetMapping("/panelusr")
    public String panelUsr(Model model) {
        List<Usuario> usuarios = usuarioService.findAll();
//        model.addAllAttributes(usuarios);
        model.addAttribute("usuarios", usuarios);

        return "table";
    }
}
