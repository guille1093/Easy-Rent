package com.unam.poo.controllers.auth;

import com.unam.poo.dto.UsuarioDto;
import com.unam.poo.models.Ciudad;
import com.unam.poo.models.Correo;
import com.unam.poo.models.Foto;
import com.unam.poo.models.Usuario;
import com.unam.poo.security.enums.RolNombre;
import com.unam.poo.security.modelo.Rol;
import com.unam.poo.security.service.RolService;
import com.unam.poo.services.UsuarioService;
import com.unam.poo.services.Ciudad.CiudadService;
import com.unam.poo.services.Correo.MailService;
import com.unam.poo.services.Foto.FotoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/register")
@Controller
public class RegisterController {

    @Autowired
    UsuarioService usuarioService;
 
    public RegisterController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    RolService rolService;

    @Autowired
    CiudadService ciudadService;
    
    @Autowired
    FotoService fotoService;

    @Autowired
    MailService mailService;

    @GetMapping ("/authRegister")
    public String registerload(Model model) {
        List<Ciudad> ciudades = ciudadService.findAll();
        model.addAttribute("ciudades", ciudades);
        return "authRegister";
    }

    @PostMapping("/newRegister")
    public String register(Model model, @Validated @ModelAttribute("UsuarioDto") UsuarioDto usuarioDto, HttpServletRequest request, HttpServletResponse response, BindingResult result) throws IOException {
        if (result.hasErrors()) {
            //aca deberia ir una pagina de error o algo xd
          return "authRegister";
        } 
        try {
            Usuario user = new Usuario();
            if (usuarioDto.getNombre()!="" && usuarioDto.getApellido() != "" && usuarioDto.getCorreo() != ""){
                if (usuarioDto.getDni() > 10000000L){
                    if (usuarioDto.getContraseña().length() > 7 && usuarioDto.getContraseña().length() < 17){                   
                        Ciudad ciudad = ciudadService.getCiudadById(usuarioDto.getCiudad());
                        System.out.println(ciudad);
                        user.setCiudad(ciudad);
                        user.setNombre(usuarioDto.getNombre());
                        user.setApellido(usuarioDto.getApellido());
                        user.setTelefono(usuarioDto.getTelefono());
                        user.setDescripcion("¡Ingrese una descripcion!");
                        user.setCorreo(usuarioDto.getCorreo());
                        user.setDni(usuarioDto.getDni());
                        user.setContraseña(passwordEncoder.encode(usuarioDto.getContraseña()));
                        
                        Set<Rol> roles = new HashSet<>();
                        roles.add(rolService.getByRolNombre(RolNombre.ROL_USUARIO).get());
                        user.setRoles(roles); 
                        
                        Foto foto = new Foto();
                        foto.setUsuario(user);
                        foto.setPerfil("../assets/img/pp.jpeg");
                        foto.setPortada("../assets/img/bgdep.jpeg");
                        fotoService.saveFoto(foto);
                        user.setFoto(foto); 

                        Correo correo = new Correo();
                        correo.setUsuario(user);
                        mailService.saveCorreo(correo);

                        System.out.println("Registrando...");
                        usuarioService.saveUsuario(user);
                        System.out.println("Registro exitoso.");
                        response.sendRedirect(request.getContextPath() + "/login");
                        return "authLogin";
                    }else{
                        System.out.println("ERROR: La contraseña debe ser mayor a 8 caracteres y menor a 16 caracteres");
                        model.addAttribute("mensaje", "ERROR: La contraseña debe ser mayor a 8 caracteres y menor a 16 caracteres");
                        return "error";
                    }                
                }else{
                    System.out.println("ERROR: El valor del DNI debe ser un numero valido mayor a 10000000");
                    model.addAttribute("mensaje", "El valor del DNI debe ser un numero valido mayor a 10000000");
                    return "error";
                }
            }else{
                System.out.println("ERROR: Debe especificar un valor para nombre, apellido y correo");
                model.addAttribute("mensaje", "Debe especificar un valor para nombre, apellido y correo");
                return "error";
            } 
        } catch (Exception e) {
            System.out.println("ERROR: " + e.getMessage());
            model.addAttribute("mensaje", e.getMessage());
            return "error";
        }
        
    }

}
