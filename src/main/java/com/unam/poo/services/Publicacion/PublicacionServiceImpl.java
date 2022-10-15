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
        Publicacion publicacion1 = publicacionRepository.findById(id).get();
        publicacion1.setTituloPublicacion(publicacion.getTituloPublicacion());
        publicacion1.setDescripcionPublicacion(publicacion.getDescripcionPublicacion());
        publicacion1.setPrecioPublicacion(publicacion.getPrecioPublicacion());
        publicacion1.setIdTipo(publicacion.getIdTipo());
//        publicacion1.setUsuario(publicacion.getUsuario());
        publicacion1.setIdCiudad(publicacion.getIdCiudad());
        publicacion1.setCaracteristicasComodidades(publicacion.getCaracteristicasComodidades());
        publicacionRepository.save(publicacion1);
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





}
