package com.unam.poo.services;

import com.unam.poo.models.Provincia;

import java.util.List;

public interface ProvinciaService {
    List<Provincia> findAll();
    void deleteProvinciaById(Long id);
    Provincia getProvinciaById(Long id);
    Provincia saveProvincia(Provincia provincia);

}
