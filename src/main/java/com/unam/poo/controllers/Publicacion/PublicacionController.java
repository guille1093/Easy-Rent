package com.unam.poo.controllers.Publicacion;

import com.unam.poo.models.Publicacion;
import com.unam.poo.models.Tipo;
import com.unam.poo.models.Usuario;
import com.unam.poo.services.PublicacionService;
import com.unam.poo.services.TipoService;
import com.unam.poo.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/publicacion")
@Controller
public class PublicacionController {

    @Autowired
    PublicacionService publicacionService;

    @Autowired
    TipoService tipoService;

    @Autowired
    UsuarioService usuarioService;

    @GetMapping("/crearPublicacion")
    public String publicacionLoad(Model model){

        List<Tipo> tipos = tipoService.findAll();

        model.addAttribute("tipos", tipos);
        model.addAttribute("publicacion", new Publicacion());
        return "Publicacion/crearPublicacion";
    }



    @PostMapping("/nuevaPublicacion")
    public String crearPublicacion(@Validated @ModelAttribute ("publicacion")Publicacion publicacion, BindingResult result) {
    if (result.hasErrors()) {
        //aca deberia ir una pagina de error o algo xd
        return "Publicacion/crearPublicacion";
    }
    publicacionService.savePublicacion(publicacion);
    return "Publicacion/crearPublicacion";
    }





//    Ruta localhost:8080/publicacion/editarPublicacion
    @GetMapping("/editarPublicacion")
    public String editarPublicacionload() {return "Publicacion/editarPublicacion";}

//    Ruta localhost:8080/publicacion/consultarPublicacion
    @GetMapping("/consultarPublicacion")
    public String consultarPublicacionload() {return "Publicacion/consultarPublicacion";}


}

