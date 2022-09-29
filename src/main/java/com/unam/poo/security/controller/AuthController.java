package com.unam.poo.security.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.unam.poo.models.Usuario;
import com.unam.poo.security.dto.JwtDto;
import com.unam.poo.security.dto.LoginUsuario;
import com.unam.poo.security.dto.Mensaje;
import com.unam.poo.security.dto.NuevoUsuario;
import com.unam.poo.security.enums.RolNombre;
import com.unam.poo.security.jwt.JwtProvider;
import com.unam.poo.security.models.Rol;
import com.unam.poo.security.services.RolService;
import com.unam.poo.services.UsuarioService;

@RestController
//@RequestMapping("/auth")
@CrossOrigin
public class AuthController {
    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    RolService rolService;

    @Autowired
    JwtProvider jwtProvider;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    UsuarioService usuarioService;

    @PostMapping("/auth/login")
    @ResponseBody
    public ResponseEntity<?> login(@RequestBody LoginUsuario loginUsuario){
        try {
            System.out.println("Autentication manager");
            Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(loginUsuario.getDni(), loginUsuario.getPassword()));
            System.out.println(authentication);
            System.out.println("Context holder");
            SecurityContextHolder.getContext().setAuthentication(authentication);
            System.out.println("generate token");
            String jwt = jwtProvider.generateToken(authentication);
            System.out.println("user details");
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            System.out.println("JwtDto");
            JwtDto jwtDto = new JwtDto(jwt, userDetails.getUsername(), userDetails.getAuthorities());
            return new ResponseEntity<JwtDto>(jwtDto, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<Mensaje>(new Mensaje("Error inesperado: " + e.getMessage()), HttpStatus.OK);
        }
    }

    @PostMapping("/auth/register")
    @ResponseBody
    public ResponseEntity<?> register(@RequestBody NuevoUsuario usuario){
        try {
            if(!(usuarioService.getUsuarioByDni(usuario.getDni()).isPresent())){
                Usuario usuarioTemp = new Usuario();

                System.out.println("Creating Roles");
                Set<Rol> roles = new HashSet<>();
                if (usuario.getRoles().contains("administrador")) {
                    roles.add(rolService.getByRolNombre(RolNombre.ROL_ADMINISTRADOR).get());
                }
                
                if (usuario.getRoles().contains("invitado")){
                    roles.add(rolService.getByRolNombre(RolNombre.ROL_INVITADO).get());
                }

                System.out.println("Setting Nombre");
                usuarioTemp.setNombre(usuario.getNombre());
                System.out.println("Setting Apellido");
                usuarioTemp.setApellido(usuario.getApellido());
                System.out.println("Setting DNI");
                usuarioTemp.setDni(usuario.getDni());
                System.out.println("Setting Correo");
                usuarioTemp.setCorreo(usuario.getCorreo());
                System.out.println("Setting Password");
                usuarioTemp.setPassword(passwordEncoder.encode(usuario.getPassword()));
                System.out.println("Setting Roles");
                usuarioTemp.setRoles(roles);
                System.out.println("Saving User");
                usuarioService.save(usuarioTemp);
                return new ResponseEntity<Mensaje>(new Mensaje("Registro exitoso"), HttpStatus.OK);
            }else{
                return new ResponseEntity<Mensaje>(new Mensaje("DNI "+usuario.getDni()+" ya registrado"), HttpStatus.BAD_REQUEST);
            }
        } catch (Exception e) {
            return new ResponseEntity<Mensaje>(new Mensaje("Error inesperado: " + e.getMessage()), HttpStatus.BAD_REQUEST);
        }
    }
}
