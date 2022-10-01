package com.unam.poo.services;

import com.unam.poo.models.Publicacion;

import java.util.List;

public interface PublicacionService {

    List<Publicacion> findAll();
    void deletePublicacionById(Long id);
    Publicacion getPublicacionById(Long id);
    Publicacion savePublicacion(Publicacion publicacion);

}
