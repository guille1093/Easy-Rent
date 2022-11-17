package com.unam.poo.services.Pais;

import java.util.List;

import com.unam.poo.models.Pais;

public interface PaisService {
    List<Pais> findAll();
    void deletePaisById(Long id);
    Pais getPaisById(Long id);
    Pais savePais(Pais pais);
}
