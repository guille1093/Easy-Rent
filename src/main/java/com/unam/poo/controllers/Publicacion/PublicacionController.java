package com.unam.poo.controllers.Publicacion;

import com.unam.poo.models.Ciudad;
import com.unam.poo.models.Provincia;
import com.unam.poo.models.Publicacion;
import com.unam.poo.models.Tipo;
import com.unam.poo.services.*;
import com.unam.poo.services.Ciudad.CiudadService;
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
    CiudadService ciudadService;


//    Ruta localhost:8080/publicacion/crearPublicacion
    @GetMapping("/crearPublicacion")
    public String publicacionLoad(Model model){

        List<Tipo> tipos = tipoService.findAll();
        List<Provincia> provincias = provinciaService.findAll();
        List<Ciudad> ciudades = ciudadService.findAll();

        model.addAttribute("ciudades", ciudades);
        model.addAttribute("provincias", provincias);
        model.addAttribute("tipos", tipos);
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
    return "Publicacion/crearPublicacion";
    }



//    Ruta localhost:8080/publicacion/editarPublicacion
    @GetMapping("/editarPublicacion")
    public String editarPublicacionload() {return "Publicacion/editarPublicacion";}



//    Ruta localhost:8080/publicacion/consultarPublicacion
    @GetMapping("/consultarPublicacion")
    public String consultarPublicacionload() {return "Publicacion/consultarPublicacion";}

    @GetMapping("/verPublicacion")
    public String verPublicacionload() {return "Publicacion/verPublicacion";}


}


