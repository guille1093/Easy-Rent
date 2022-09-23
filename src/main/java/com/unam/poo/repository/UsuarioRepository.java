package com.unam.poo.repository;

import com.unam.poo.models.Usuario;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import java.lang.Long;
import java.util.Optional;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
    Optional<Usuario> findByDni(Long dni);
    boolean existsByDni(Long dni);
}