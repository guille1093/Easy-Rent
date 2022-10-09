package com.unam.poo.services.Provincia;

import com.unam.poo.models.Provincia;
import com.unam.poo.repository.ProvinciaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProvinciaServiceImpl implements ProvinciaService {

    @Autowired
    private ProvinciaRepository provinciaRepository;

    @Override
    public List<Provincia> findAll() {
        return provinciaRepository.findAll();
    }

    @Override
    public void deleteProvinciaById(Long id) {

    }

    @Override
    public Provincia getProvinciaById(Long id) {
        return provinciaRepository.findById(id).get();
    }

    @Override
    public Provincia saveProvincia(Provincia provincia) {
        return null;
    }
}

