package com.unam.poo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.unam.poo.models.Foto;

@Repository
public interface FotosRepository  extends JpaRepository<Foto, Long>{
    
}
