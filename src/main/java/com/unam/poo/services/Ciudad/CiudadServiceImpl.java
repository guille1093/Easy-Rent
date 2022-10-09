package com.unam.poo.services.Ciudad;

import com.unam.poo.models.Ciudad;
import com.unam.poo.repository.CiudadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CiudadServiceImpl implements CiudadService {

    @Autowired
    private CiudadRepository ciudadRepository;

    @Override
    public List<Ciudad> findAll() {
        return ciudadRepository.findAll();
    }

    @Override
    public void deleteCiudadById(Long id) {

    }

    @Override
    public Ciudad getCiudadById(Long id) {
        return ciudadRepository.findById(id).get();
    }

    @Override
    public Ciudad saveCiudad(Ciudad ciudad) {
        return ciudadRepository.save(ciudad);
    }
}

