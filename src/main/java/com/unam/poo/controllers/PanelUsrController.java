package com.unam.poo.controllers;

import com.unam.poo.models.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.unam.poo.services.UsuarioService;

import java.util.List;


@Controller
//esta es como una ruta general de la clase
@RequestMapping("/panel")
public class PanelUsrController {
    @Autowired UsuarioService usuarioService;

    //esta es la ruta especifica de la funcion
    // entonces queda localhost:8080/panel/panelUsr
    @GetMapping("/panelusr")
    public String panelUsr(Model model) {
        //esto es lo mismo que POO1
        List<Usuario> usuarios = usuarioService.findAll();
        //model.addAllAttributes(usuarios);
        //aca agregamos los atributos al modelo que es lo
        //que usamos en el html para mostrar los datos
        model.addAttribute("usuarios", usuarios);
        //retornamos el nombre del JSP que queremos mostrar
        //cuando se llame a esta funcion por la ruta
        //en este caso la tabla de usuarios que esta en WEB-INF/jsp/table.jsp
        return "table";
    }
}
