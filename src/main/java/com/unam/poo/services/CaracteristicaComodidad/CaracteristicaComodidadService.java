package com.unam.poo.services.CaracteristicaComodidad;

import com.unam.poo.models.CaracteristicaComodidad;

import java.util.List;

public interface CaracteristicaComodidadService {

    List<CaracteristicaComodidad> findAll();
    void deleteCaracteristicaComodidadById(Long id);
    CaracteristicaComodidad getCaracteristicaComodidadById(Long id);
    CaracteristicaComodidad saveCaracteristicaComodidad(CaracteristicaComodidad caracteristicaComodidad);

}
