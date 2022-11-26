package com.unam.poo.controllers.auth;

import com.unam.poo.dto.LoginDto;
import com.unam.poo.dto.UsuarioDto;
import com.unam.poo.models.CaracteristicaComodidad;
import com.unam.poo.models.Ciudad;
import com.unam.poo.models.Foto;
import com.unam.poo.models.Publicacion;
import com.unam.poo.models.Usuario;
import com.unam.poo.services.CaracteristicaComodidad.CaracteristicaComodidadService;
import com.unam.poo.services.Ciudad.CiudadService;
import com.unam.poo.services.Comodidad.ComodidadService;
import com.unam.poo.services.Foto.FotoService;
import com.unam.poo.services.Provincia.ProvinciaService;
import com.unam.poo.services.Publicacion.PublicacionService;
import com.unam.poo.services.Tipo.TipoService;

import jakarta.mail.Multipart;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.unam.poo.services.UsuarioService;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.codec.Utf8;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.net.URLDecoder;
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
    
    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    FotoService fotoService;

    @GetMapping("/profile")
    public String userProfile(Model model, HttpServletRequest request)
    {
        List<Publicacion> publicaciones = publicacionService.findAllByEstadoPublicacion("activo");
        publicaciones.addAll(   publicacionService.findAllByEstadoPublicacion("Alquilado")   );
        publicaciones.addAll(   publicacionService.findAllByEstadoPublicacion("Desactivado")   );
        List<CaracteristicaComodidad> caracteristicaComodidades = caracteristicaComodidadService.findAll();

        Long idUsuario = (Long) request.getSession().getAttribute("userId");
        model.addAttribute("usuario", usuarioService.getUsuarioById(idUsuario));
        model.addAttribute("publicaciones", publicaciones);
        model.addAttribute("caracteristicaComodidades", caracteristicaComodidades);

        List<Ciudad> ciudades = ciudadService.findAll();
        model.addAttribute("ciudades", ciudades);
        
        return "userProfile";
    }

    @PostMapping("/update")
    public String updateProfile(Model model, @Validated @ModelAttribute("UsuarioDto") UsuarioDto usuarioDto, HttpServletRequest request, HttpServletResponse response){
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
            model.addAttribute("mensaje", e.getMessage() );
            return "error";
        }
    }

    @PostMapping("/cambiarPerfil")
    public String cambiarPerfil(Model model, @RequestBody String body, HttpServletRequest request, HttpServletResponse response, BindingResult result) {
        if (result.hasErrors()) { 
            model.addAttribute("mensaje", result.getAllErrors().toString());
            return "error";
        }  
        try {    
            Long idUsuario = (Long) request.getSession().getAttribute("userId");
            Usuario user = usuarioService.getUsuarioById(idUsuario);
            if ( user != null){
                Foto foto = user.getFoto(); 
                String str = body.replace("imagen=", ""); 
                str = URLDecoder.decode(str, "UTF-8");
                System.out.println(str);
                foto.setPerfil(str);
                fotoService.saveFoto(foto);
            } 
            response.sendRedirect(request.getContextPath() + "/user/profile");
            return "userProfile";             
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            model.addAttribute("mensaje", e.getMessage());
            return "error";
        }
    }

    @PostMapping("/cambiarPortada")
    public String cambiarPortada(Model model, @RequestBody String body, HttpServletRequest request, HttpServletResponse response, BindingResult result) {
        if (result.hasErrors()) { 
            model.addAttribute("mensaje", result.getAllErrors().toString());
            return "error";
        }  
        try {   
            Long idUsuario = (Long) request.getSession().getAttribute("userId");
            Usuario user = usuarioService.getUsuarioById(idUsuario);
            if ( user != null){
                Foto foto = user.getFoto(); 
                String str = body.replace("portada=", ""); 
                str = URLDecoder.decode(str, "UTF-8");
                System.out.println(str);
                foto.setPortada(str);
                fotoService.saveFoto(foto);
            } 
            response.sendRedirect(request.getContextPath() + "/user/profile");
            return "userProfile";            
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            model.addAttribute("mensaje", e.getMessage());
            return "error";
        }
    }

    @PostMapping("/deleteAccount")
    public String deleteAccount(Model model, @Validated @ModelAttribute("LoginDto") LoginDto loginDto, HttpServletRequest request, HttpServletResponse response, BindingResult result) {
        if (result.hasErrors()) { 
          return "Error";
        }  
        try { 
            System.out.println("Buscando usuario");
            Usuario user = usuarioService.getUsuarioByCorreo(loginDto.getCorreo().toString()); 
            System.out.println("Encontrado");
            if (user != null){  
                System.out.println("Mail correcto, verificando contraseña");
                if (passwordEncoder.matches(loginDto.getContraseña(), user.getContraseña())){
                    //Coinciden entonces:
                    System.out.println("AUTENTICADO: Dando de baja la cuenta...");
                   
                    user.setActivo(false);
                    usuarioService.saveUsuario(user);
                    
                    /* Como en el logout -> */ 
                    request.getSession().removeAttribute("usuario"); 
                    request.getSession().removeAttribute("autenticado"); 
                    response.sendRedirect(request.getContextPath() + "/");
                    return "welcome"; 
                }else{
                    System.out.println("ERROR: Contraseña incorrecta");
                    model.addAttribute("mensaje", "Contraseña incorrecta");
                    return "error";
                }
            }else{
                System.out.println("ERROR: Mail incorrecto");
                model.addAttribute("mensaje", "Mail incorrecto");
                return "error";
            } 
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            model.addAttribute("mensaje", e.getMessage());
            return "error";
        }
    }

}
