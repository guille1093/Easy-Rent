package com.unam.poo.controllers.auth;


import com.unam.poo.models.CaracteristicaComodidad;
import com.unam.poo.models.Publicacion;
import com.unam.poo.services.CaracteristicaComodidad.CaracteristicaComodidadService;
import com.unam.poo.services.Ciudad.CiudadService;
import com.unam.poo.services.Comodidad.ComodidadService;
import com.unam.poo.services.Provincia.ProvinciaService;
import com.unam.poo.services.Publicacion.PublicacionService;
import com.unam.poo.services.Tipo.TipoService;
import com.unam.poo.services.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
    @RequestMapping("/user")
public class UserProfileController {

    @Autowired
    PublicacionService publicacionService;

    @Autowired
    TipoService tipoService;

    @Autowired
    UsuarioService usuarioService;

    @Autowired
    ProvinciaService provinciaService;

    @Autowired
    ComodidadService comodidadService;

    @Autowired
    CaracteristicaComodidadService caracteristicaComodidadService;

    @Autowired
    CiudadService ciudadService;


    @GetMapping("/profile")
    public String userProfile(Model model)
    {
        List<Publicacion> publicaciones = publicacionService.findAllByEstadoPublicacion("activo");
        publicaciones.addAll(   publicacionService.findAllByEstadoPublicacion("Alquilado")   );
        publicaciones.addAll(   publicacionService.findAllByEstadoPublicacion("Desactivado")   );
        List<CaracteristicaComodidad> caracteristicaComodidades = caracteristicaComodidadService.findAll();

        model.addAttribute("publicaciones", publicaciones);
        model.addAttribute("caracteristicaComodidades", caracteristicaComodidades);

        return "userProfile";
    }
}
