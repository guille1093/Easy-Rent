package com.unam.poo.services;
import com.unam.poo.models.Usuario;
import com.unam.poo.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Override
    public List<Usuario> findAll() {
        return usuarioRepository.findAll();
    }

    @Override
    public void deleteUsuarioById(Long id) {
        usuarioRepository.deleteById(id);
    }

    @Override
    public Usuario getUsuarioById(Long id) {
        return usuarioRepository.findById(id).get();
    }

    @Override
    public Usuario saveUsuario(Usuario usuario) {
        return usuarioRepository.save(usuario);
    }
}

