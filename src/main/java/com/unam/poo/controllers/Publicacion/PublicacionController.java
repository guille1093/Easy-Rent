package com.unam.poo.controllers.Publicacion;

import com.unam.poo.models.*;
import com.unam.poo.services.*;
import com.unam.poo.services.CaracteristicaComodidad.CaracteristicaComodidadService;
import com.unam.poo.services.Ciudad.CiudadService;
import com.unam.poo.services.Comodidad.ComodidadService;
import com.unam.poo.services.Provincia.ProvinciaService;
import com.unam.poo.services.Publicacion.PublicacionService;
import com.unam.poo.services.Tipo.TipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
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

    @Autowired
    ProvinciaService provinciaService;

    @Autowired
    ComodidadService comodidadService;

    @Autowired
    CaracteristicaComodidadService caracteristicaComodidadService;

    @Autowired
    CiudadService ciudadService;



//    Crear publicacion
//    Ruta localhost:8080/publicacion/crearPublicacion
    @GetMapping("/crearPublicacion")
    public String publicacionLoad(Model model){

        List<Tipo> tipos = tipoService.findAll();
        List<Provincia> provincias = provinciaService.findAll();
        List<Ciudad> ciudades = ciudadService.findAll();
        List<Comodidad> comodidades = comodidadService.findAll();
        List<CaracteristicaComodidad> caracteristicaComodidades = caracteristicaComodidadService.findAll();


        model.addAttribute("ciudades", ciudades);
        model.addAttribute("provincias", provincias);
        model.addAttribute("tipos", tipos);
        model.addAttribute("comodidades", comodidades);
        model.addAttribute("caracteristicaComodidades", caracteristicaComodidades);
        model.addAttribute("publicacion", new Publicacion());
        return "Publicacion/crearPublicacion";
    }

//    Ruta localhost:8080/publicacion/nuevaPublicacion
    @PostMapping("/nuevaPublicacion")
    public String crearPublicacion( @Validated @ModelAttribute ("publicacion")Publicacion publicacion, BindingResult result) {
    if (result.hasErrors()) {
        //aca deberia ir una pagina de error o algo xd
        return "Publicacion/crearPublicacion";
    }

   /* if (!foto.isEmpty()) {

   @RequestParam(name = "file", required = false) MultipartFile foto, ESTO VA EN LOS PARAMETROS DE crearPublicacion

        System.out.println("HAY FOTO");

        String ruta = "C://Users//yonat//OneDrive//Escritorio";

        try {
            byte[] bytes = foto.getBytes();

            System.out.println("bytes: " + bytes);

            Path rutaCompleta = Paths.get(ruta + "//" + foto.getOriginalFilename());

            System.out.println("rutaCompleta: " + rutaCompleta);


            Files.write(rutaCompleta, bytes);
            publicacion.setImagenUnoPublicacion(foto.getOriginalFilename());

        }catch (Exception e){
            e.printStackTrace();
        }


    } */

    publicacionService.savePublicacion(publicacion);
    return "redirect:/publicacion/consultarPublicacion";
    }



//    Editar publicacion
//    Ruta localhost:8080/publicacion/editarPublicacion/{id}
    @GetMapping("/editarPublicacion/{id}")
    public String editarPublicacion(@PathVariable("id") Long id, Model model) {
        Publicacion publicacion = publicacionService.getPublicacionById(id);
        List<Tipo> tipos = tipoService.findAll();
        List<Provincia> provincias = provinciaService.findAll();
        List<Ciudad> ciudades = ciudadService.findAll();
        List<Comodidad> comodidades = comodidadService.findAll();
        List<CaracteristicaComodidad> caracteristicaComodidades = caracteristicaComodidadService.findAll();

        model.addAttribute("ciudades", ciudades);
        model.addAttribute("provincias", provincias);
        model.addAttribute("tipos", tipos);
        model.addAttribute("comodidades", comodidades);
        model.addAttribute("caracteristicaComodidades", caracteristicaComodidades);

        model.addAttribute("publicacion", publicacion);
        return "Publicacion/editarPublicacion";
    }

    @PutMapping("/editarPublicacion/{id}")
    public String editarPublicacion(@PathVariable("id") Long id, @Validated @ModelAttribute ("publicacion")Publicacion publicacion, BindingResult result) {
        if (result.hasErrors()) {
            //aca deberia ir una pagina de error o algo xd
            return "Publicacion/editarPublicacion";
        }
        publicacionService.updatePublicacion(publicacion, id);
        return "redirect:/publicacion/consultarPublicacion";
    }



//    Consultar todas las publicaciones de un usuario
//    Ruta localhost:8080/publicacion/consultarPublicacion
    @GetMapping("/consultarPublicacion")
    public String consultarPublicacionload(Model model){

        List<Publicacion> publicaciones = publicacionService.findAll();

        model.addAttribute("publicaciones", publicaciones);

        return "Publicacion/consultarPublicacion";
    }



//    Ver una publicacion
//    Ruta localhost:8080/publicacion/verPublicacion/{id}
    @GetMapping("/verPublicacion/{id}")
    public String verPublicacion(@PathVariable("id") Long id, Model model){

        Publicacion publicacion = publicacionService.getPublicacionById(id);

        model.addAttribute("publicacion", publicacion);

        return "Publicacion/verPublicacion";
    }


}


