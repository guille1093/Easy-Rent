package com.unam.poo.services.Publicacion;

import com.unam.poo.models.Publicacion;

import java.util.List;

public interface PublicacionService {

    List<Publicacion> findAll();
    void deletePublicacionById(Long id);
    Publicacion getPublicacionById(Long id);
    Publicacion savePublicacion(Publicacion publicacion);

//    metodo para actualizar una publicacion
    void updatePublicacion(Publicacion publicacion, Long id);

    List<Publicacion> findAllByEstadoPublicacion(String estadoPublicacion);
}
