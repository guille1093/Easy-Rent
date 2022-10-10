package com.unam.poo.services.Comodidad;

import com.unam.poo.models.Comodidad;
import com.unam.poo.repository.ComodidadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ComodidadServiceImpl implements ComodidadService {

    @Autowired
    private ComodidadRepository comodidadRepository;

    @Override
    public List<Comodidad> findAll() {
        return comodidadRepository.findAll();
    }

    @Override
    public void deleteComodidadById(Long id) {

    }

    @Override
    public Comodidad getComodidadById(Long id) {
        return comodidadRepository.findById(id).get();
    }

    @Override
    public Comodidad saveComodidad(Comodidad comodidad) {
        return null;
    }
}

