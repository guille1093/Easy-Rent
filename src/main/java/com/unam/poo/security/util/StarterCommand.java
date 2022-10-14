package com.unam.poo.security.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.unam.poo.security.enums.RolNombre;
import com.unam.poo.security.modelo.Rol;
import com.unam.poo.security.service.RolService;

@Component  
public class StarterCommand implements CommandLineRunner {

    @Autowired
    RolService rolService;

    @Override
    public void run(String... args) throws Exception {

        if (!(rolService.getByRolNombre(RolNombre.ROL_USUARIO).isPresent())) {
            Rol rolAdmin = new Rol(RolNombre.ROL_USUARIO);
            rolService.save(rolAdmin);
            System.out.println("ROL_USUARIO CREADO");
        }else{
            System.out.println("ROL_USUARIO EXISTENTE");
        } 
        
    }

} 