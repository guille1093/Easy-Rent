package com.unam.poo.security.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import com.unam.poo.models.Ciudad;
import com.unam.poo.models.Pais;
import com.unam.poo.models.Provincia;
import com.unam.poo.security.enums.RolNombre;
import com.unam.poo.security.modelo.Rol;
import com.unam.poo.security.service.RolService;
import com.unam.poo.services.CaracteristicaComodidad.CaracteristicaComodidadService;
import com.unam.poo.services.Ciudad.CiudadService;
import com.unam.poo.services.Comodidad.ComodidadService;
import com.unam.poo.services.Pais.PaisService;
import com.unam.poo.services.Provincia.ProvinciaService;
import com.unam.poo.services.Tipo.TipoService;

@Component  
public class StarterCommand implements CommandLineRunner {

    @Autowired
    RolService rolService;
    
    @Autowired
    PaisService paisService;

    @Autowired
    ProvinciaService provinciaService;

    @Autowired
    CiudadService ciudadService;

    @Autowired
    TipoService tipoService;

    @Autowired
    ComodidadService comodidadService;

    @Autowired
    CaracteristicaComodidadService caracteristicaComodidadService;

    @Override
    public void run(String... args) throws Exception {

        if (!(rolService.getByRolNombre(RolNombre.ROL_USUARIO).isPresent())) {
            Rol rolAdmin = new Rol(RolNombre.ROL_USUARIO);
            rolService.save(rolAdmin);
            System.out.println("ROL_USUARIO CREADO");
        }else{
            System.out.println("ROL_USUARIO EXISTENTE");
        } 

        Boolean valor = false;
        for (Pais pais : paisService.findAll()) {
            if (pais.getPais().equals("Argentina")){
                valor = true;
            }
        }
        if (!valor){
            /* Carga de pais */
            Pais pais = new Pais();
            pais.setPais("Argentina");
            paisService.savePais(pais);
            System.out.println("Pais creado: " + pais.getPais());

            Boolean valor2 = false;
            for (Provincia prov : provinciaService.findAll()) {
                if (prov.getProvincia().equals("Misiones")){
                    valor = true;
                }
            }
            if (!valor2){
                /* Carga de provincia */
                Provincia provincia = new Provincia();
                provincia.setIdPais(pais);
                provincia.setProvincia("Misiones");
                provinciaService.saveProvincia(provincia);
                System.out.println("Provincia creada: " + provincia.getProvincia());

                Boolean valor3 = false;
                for (Ciudad ciudad : ciudadService.findAll()) {
                    if (ciudad.getCiudad().equals("Apostoles")){
                        valor = true;
                    }
                }
                if (!valor3){
                    /* Carga de ciudad */
                    Ciudad ciudad = new Ciudad();
                    ciudad.setIdProvincia(provincia);
                    ciudad.setCiudad("Apostoles");
                    ciudadService.saveCiudad(ciudad);
                    System.out.println("Ciudad creada: " + ciudad.getCiudad());
                }
            }
        }

    }

} 