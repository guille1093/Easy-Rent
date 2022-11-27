package com.unam.poo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.unam.poo.models.Correo;

@Repository
public interface MailRepository extends JpaRepository<Correo, Long>{
    
}
