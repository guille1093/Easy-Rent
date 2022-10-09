package com.unam.poo.repository;

import com.unam.poo.models.Comodidad;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ComodidadRepository extends JpaRepository<Comodidad, Long> {

}

