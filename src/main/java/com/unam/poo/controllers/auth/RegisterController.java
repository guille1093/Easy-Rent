package com.unam.poo.controllers.auth;

import com.unam.poo.dto.UsuarioDto;
import com.unam.poo.models.Usuario;
import com.unam.poo.security.enums.RolNombre;
import com.unam.poo.security.modelo.Rol;
import com.unam.poo.security.service.RolService;
import com.unam.poo.services.UsuarioService;

import java.util.HashSet;
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
    /**
        * @param model
        * @return
        */

    //esto es lo mismo que usar el @Autowired pero de forma manual y deja de dar la advertencia
    final
    UsuarioService usuarioService;
 
    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    RolService rolService;

    public RegisterController(UsuarioService usuarioService) {
        this.usuarioService = usuarioService;
    }

    @GetMapping ("/authRegister")
    public String registerload(Model model) {
        model.addAttribute("usuario", new Usuario());
        return "authRegister";
    }

    @PostMapping("/newRegister")
    public String register(@Validated @ModelAttribute("UsuarioDto") UsuarioDto usuarioDto, BindingResult result) {
        if (result.hasErrors()) {
            //aca deberia ir una pagina de error o algo xd
          return "authRegister";
        } 
        Usuario user = new Usuario();
        if (usuarioDto.getNombre()!="" && usuarioDto.getApellido() != "" && usuarioDto.getCorreo() != ""){
            if (usuarioDto.getDni() > 10000000L){
                if (usuarioDto.getContraseña().length() > 7 && usuarioDto.getContraseña().length() < 17){
                    user.setNombre(usuarioDto.getNombre());
                    user.setApellido(usuarioDto.getApellido());
                    user.setCorreo(usuarioDto.getCorreo());
                    user.setDni(usuarioDto.getDni());
                    user.setContraseña(passwordEncoder.encode(usuarioDto.getContraseña()));
                    Set<Rol> roles = new HashSet<>();
                    roles.add(rolService.getByRolNombre(RolNombre.ROL_USUARIO).get());
                    user.setRoles(roles);
                    System.out.println("Registrando...");
                    usuarioService.saveUsuario(user);
                    System.out.println("Registro exitoso.");
                    return "authLogin";
                }else{
                    return "ERROR: La contraseña debe ser mayor a 8 caracteres y menor a 16 caracteres";
                }                
            }else{
                return "ERROR: El valor del DNI debe ser un numero valido mayor a 10000000";
            }
        }else{
            return "ERROR: Debe especificar un valor para nombre, apellido y correo";
        }
        
    }

}
