package com.unam.poo.services.Publicacion;


import com.unam.poo.models.Publicacion;
import com.unam.poo.repository.PublicacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PublicacionServiceImpl implements PublicacionService{

    @Autowired
    private PublicacionRepository publicacionRepository;


    @Override
    public Publicacion getPublicacionById(Long id) {
        return publicacionRepository.findById(id).get();
    }

    @Override
    public Publicacion savePublicacion(Publicacion publicacion) {
        return publicacionRepository.save(publicacion);
    }

    @Override
    public List<Publicacion> findAll() {
        return publicacionRepository.findAll();
    }

    @Override
    public void updatePublicacion(Publicacion publicacion, Long id) {

        publicacionRepository.save(publicacion);
    }

    @Override
    public List<Publicacion> findAllByEstadoPublicacion(String estadoPublicacion) {
        return publicacionRepository.findAllByEstadoPublicacion(estadoPublicacion);
    }

    //    borrado logico de publicacion
    @Override
    public void deletePublicacionById(Long id) {
        Publicacion publicacion = publicacionRepository.findById(id).get();
        publicacion.setEstadoPublicacion("eliminado");
        publicacionRepository.save(publicacion);
    }

    //    metodo de busqueda publicaciones por id o titulo
    @Override
    public List<Publicacion> findByTituloPublicacionContaining(String titulo) {
        return publicacionRepository.findByTituloPublicacionContaining(titulo);
    }




}
