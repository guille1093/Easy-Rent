package com.unam.poo.services.Pais;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unam.poo.models.Pais;
import com.unam.poo.repository.PaisRepository;

@Service
public class PaisServiceImpl implements PaisService{

    @Autowired
    PaisRepository paisRepository;

    @Override
    public List<Pais> findAll() {
        return paisRepository.findAll();
    }

    @Override
    public void deletePaisById(Long id) {
        paisRepository.deleteById(id);
    }

    @Override
    public Pais getPaisById(Long id) {
        return paisRepository.findById(id).get();
    }

    @Override
    public Pais savePais(Pais pais) {
        return paisRepository.save(pais);
    } 
}
