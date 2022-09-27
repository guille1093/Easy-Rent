package com.unam.poo.controllers.Publicacion;

import com.unam.poo.controllers.PanelUsrController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/publicacion")
@Controller
public class PublicacionController {
    @Autowired
    PanelUsrController panelUsrController;

//    Ruta localhost:8080/publicacion/crearPublicacion
    @GetMapping("/crearPublicacion")
    public String crearPublicacionload() {
        return "Publicacion/crearPublicacion";
    }

//    Ruta localhost:8080/publicacion/editarPublicacion
    @GetMapping("/editarPublicacion")
    public String editarPublicacionload() {return "Publicacion/editarPublicacion";}

//    Ruta localhost:8080/publicacion/consultarPublicacion
    @GetMapping("/consultarPublicacion")
    public String consultarPublicacionload() {return "Publicacion/consultarPublicacion";}
}

