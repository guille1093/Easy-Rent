package com.unam.poo.services;
import com.unam.poo.models.Usuario;
import java.util.List;
import java.util.Optional;

public interface UsuarioService {
    public Optional<Usuario> getUsuarioByDni(Long dni);
    public Usuario getUsuarioById(Long id);
    public boolean existsByDni(Long dni);
    public void save(Usuario usuario);
    public void delete(Usuario usuario);
    public List<Usuario> getUsuarios();
}
