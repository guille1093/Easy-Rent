package com.unam.poo.controllers.auth;

 
import com.unam.poo.dto.UsuarioDto;
import com.unam.poo.models.CaracteristicaComodidad;
import com.unam.poo.models.Ciudad;
import com.unam.poo.models.Publicacion;
import com.unam.poo.models.Usuario;
import com.unam.poo.services.CaracteristicaComodidad.CaracteristicaComodidadService;
import com.unam.poo.services.Ciudad.CiudadService;
import com.unam.poo.services.Comodidad.ComodidadService;
import com.unam.poo.services.Provincia.ProvinciaService;
import com.unam.poo.services.Publicacion.PublicacionService;
import com.unam.poo.services.Tipo.TipoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.unam.poo.services.UsuarioService;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
    public String userProfile(Model model, HttpServletRequest request)
    {
        List<Publicacion> publicaciones = publicacionService.findAllByEstadoPublicacion("activo");
        publicaciones.addAll(   publicacionService.findAllByEstadoPublicacion("Alquilado")   );
        publicaciones.addAll(   publicacionService.findAllByEstadoPublicacion("Desactivado")   );
        List<CaracteristicaComodidad> caracteristicaComodidades = caracteristicaComodidadService.findAll();
        System.out.println(request.getSession().getAttribute("userId"));//Ver si llega valor otorgado por test
        Long idUsuario = (Long) request.getSession().getAttribute("userId");
        model.addAttribute("usuario", usuarioService.getUsuarioById(idUsuario));
        model.addAttribute("publicaciones", publicaciones);
        model.addAttribute("caracteristicaComodidades", caracteristicaComodidades);

        List<Ciudad> ciudades = ciudadService.findAll();
        model.addAttribute("ciudades", ciudades);
        
        return "userProfile";
    }

    @PostMapping("/update")
    public String updateProfile(@Validated @ModelAttribute("UsuarioDto") UsuarioDto usuarioDto, HttpServletRequest request, HttpServletResponse response){
        try {
            System.out.println("DATOS A ACTUALIZAR: ");
            System.out.println("Nombre: " + usuarioDto.getNombre());
            System.out.println("Apellido: " + usuarioDto.getApellido());
            System.out.println("Correo: " + usuarioDto.getCorreo());
            System.out.println("Telefono: " + usuarioDto.getTelefono());
            System.out.println("Ciudad ID: " + usuarioDto.getCiudad());
            System.out.println("Descripcion: " + usuarioDto.getDescripcion());


            Long idUsuario = (Long) request.getSession().getAttribute("userId");
            Usuario user = usuarioService.getUsuarioById(idUsuario);
            System.out.println("Usuario objetivo: " + user);
            
            Ciudad ciudad = ciudadService.getCiudadById(usuarioDto.getCiudad());
            System.out.println("Ciudad objetivo: " + ciudad);

            System.out.println("Setting ciudad");
            user.setCiudad(ciudad);
            System.out.println("Setting nombre");
            user.setNombre(usuarioDto.getNombre());
            System.out.println("Setting apellido");
            user.setApellido(usuarioDto.getApellido());
            System.out.println("Setting telefono");
            user.setTelefono(usuarioDto.getTelefono());
            System.out.println("Setting descripcion");
            user.setDescripcion(usuarioDto.getDescripcion());
            System.out.println("Setting correo");
            user.setCorreo(usuarioDto.getCorreo()); 
            System.out.println("Guardando...");
            usuarioService.saveUsuario(user);
            System.out.println("Actualizado con exito.");
            response.sendRedirect(request.getContextPath()+"/user/profile");
            return "userProfile";
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage() + ". Causa: " + e.getCause());
            return "error";
        }
    }

}
