package com.unam.poo.services.CaracteristicaComodidad;

import com.unam.poo.models.CaracteristicaComodidad;
import com.unam.poo.repository.CaracteristicaComodidadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CaracteristicaComodidadServiceImpl implements CaracteristicaComodidadService {

    @Autowired
    private CaracteristicaComodidadRepository caracteristicaComodidadRepository;

    @Override
    public List<CaracteristicaComodidad> findAll() {
        return caracteristicaComodidadRepository.findAll();
    }

    @Override
    public void deleteCaracteristicaComodidadById(Long id) {

    }

    @Override
    public CaracteristicaComodidad getCaracteristicaComodidadById(Long id) {
        return caracteristicaComodidadRepository.findById(id).get();
    }

    @Override
    public CaracteristicaComodidad saveCaracteristicaComodidad(CaracteristicaComodidad caracteristicaComodidad) {
        return null;
    }
}
