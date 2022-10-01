package com.unam.poo.services;

import com.unam.poo.models.Tipo;

import java.util.List;

public interface TipoService {

    List<Tipo> findAll();
    void deleteTipoById(Long id);
    Tipo getTipoById(Long id);
    Tipo saveTipo(Tipo tipo);

}
