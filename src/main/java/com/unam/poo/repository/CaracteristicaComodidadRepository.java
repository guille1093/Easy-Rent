package com.unam.poo.repository;

import com.unam.poo.models.CaracteristicaComodidad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CaracteristicaComodidadRepository extends JpaRepository<CaracteristicaComodidad, Long> {

}
