package com.unam.poo.services;
import com.unam.poo.models.Usuario;
import java.util.List;


public interface UsuarioService {
    List<Usuario> findAll();
    void deleteUsuarioById(Long id);
    Usuario getUsuarioById(Long id);
    Usuario saveUsuario(Usuario usuario);
    Usuario getUsuarioByCorreo(String correo);

    void agregarFavoritos(Long idPublicacion,Long id);
    void quitarFavoritos(Long idPublicacion,Long id);
}
