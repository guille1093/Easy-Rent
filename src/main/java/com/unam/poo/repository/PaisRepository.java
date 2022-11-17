package com.unam.poo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.unam.poo.models.Pais;

@Repository
public interface PaisRepository extends JpaRepository<Pais, Long>{
    
}
