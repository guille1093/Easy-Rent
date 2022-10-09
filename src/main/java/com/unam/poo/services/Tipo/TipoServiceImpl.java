package com.unam.poo.services.Tipo;

import com.unam.poo.models.Tipo;
import com.unam.poo.repository.TipoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TipoServiceImpl implements TipoService {

    @Autowired
    private TipoRepository tipoRepository;

    @Override
    public List<Tipo> findAll() {
        return tipoRepository.findAll();
    }

    @Override
    public void deleteTipoById(Long id) {

    }

    @Override
    public Tipo getTipoById(Long id) {
        return tipoRepository.findById(id).get();
    }

    @Override
    public Tipo saveTipo(Tipo tipo) {
        return tipoRepository.save(tipo);
    }
}

