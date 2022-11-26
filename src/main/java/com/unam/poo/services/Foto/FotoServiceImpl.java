package com.unam.poo.services.Foto;

import java.util.Base64;
import java.util.List;

import org.apache.commons.codec.binary.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service; 

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.unam.poo.models.Foto;
import com.unam.poo.repository.FotosRepository;

@Service
public class FotoServiceImpl implements FotoService{

    @Autowired
    FotosRepository fotosRepository;

    @Override
    public List<Foto> findAll() {
        return fotosRepository.findAll();
    }

    @Override
    public void deleteFotoById(Long id) {
        fotosRepository.deleteById(id);    
    }

    @Override
    public Foto getFotoById(Long id) {
        return fotosRepository.findById(id).orElse(null);
    }
 
    @Override
    public Foto saveFoto(Foto foto) {
        return fotosRepository.save(foto);
    }

    @Override
    public String transformToDataURI(Foto foto) {
        String str = "";
        str += "data:image/png;base64,";
        //str += Base64.getEncoder().encodeToString(foto.getBytes());
        return str;
    }
    
}
