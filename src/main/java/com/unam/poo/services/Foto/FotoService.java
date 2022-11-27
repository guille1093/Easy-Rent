package com.unam.poo.services.Foto;

import java.util.List;

import com.unam.poo.models.Foto;

public interface FotoService {
    List<Foto> findAll();
    void deleteFotoById(Long id);
    Foto getFotoById(Long id); 
    Foto saveFoto(Foto foto);
    String transformToDataURI(Foto foto);
}
