package com.unam.poo.repository;

import com.unam.poo.models.Usuario;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import java.lang.Long;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
}