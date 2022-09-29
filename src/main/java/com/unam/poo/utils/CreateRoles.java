package com.unam.poo.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.unam.poo.security.enums.RolNombre;
import com.unam.poo.security.models.Rol;
import com.unam.poo.security.services.RolService;

@Component
public class CreateRoles implements CommandLineRunner {

    @Autowired
    RolService rolService;

    @Override
    public void run(String... args) throws Exception {

        if (!(rolService.getByRolNombre(RolNombre.ROL_ADMINISTRADOR).isPresent())) {
            Rol rolAdmin = new Rol(RolNombre.ROL_ADMINISTRADOR);
            rolService.save(rolAdmin);
            System.out.println("ROL_ADMINISTRADOR CREADO");
        }else{
            System.out.println("ROL_ADMINISTRADOR EXISTENTE");
        }

        if (!(rolService.getByRolNombre(RolNombre.ROL_INVITADO).isPresent())) {
            Rol rolAdmin = new Rol(RolNombre.ROL_INVITADO);
            rolService.save(rolAdmin);
            System.out.println("ROL_INVITADO CREADO");
        }else{
            System.out.println("ROL_INVITADO EXISTENTE");
        }

    }

}