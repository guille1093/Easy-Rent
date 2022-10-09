package com.unam.poo.services.Ciudad;

import com.unam.poo.models.Ciudad;

import java.util.List;

public interface CiudadService {
    List<Ciudad> findAll();
    void deleteCiudadById(Long id);
    Ciudad getCiudadById(Long id);
    Ciudad saveCiudad(Ciudad ciudad);

}
