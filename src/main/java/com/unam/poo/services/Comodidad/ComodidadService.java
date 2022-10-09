package com.unam.poo.services.Comodidad;

import com.unam.poo.models.Comodidad;

import java.util.List;

public interface ComodidadService {

    List<Comodidad> findAll();
    void deleteComodidadById(Long id);
    Comodidad getComodidadById(Long id);
    Comodidad saveComodidad(Comodidad comodidad);

}
