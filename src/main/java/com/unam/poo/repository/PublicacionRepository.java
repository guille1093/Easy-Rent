package com.unam.poo.repository;

import com.unam.poo.models.Publicacion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PublicacionRepository extends JpaRepository<Publicacion, Long> {

//    lista de todas las publicaciones con estadoPublicacion = activo
    List<Publicacion> findAllByEstadoPublicacion(String estadoPublicacion);

}

