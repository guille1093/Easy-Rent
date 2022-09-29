package com.unam.poo.services;
import com.unam.poo.models.Usuario;
import com.unam.poo.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    public Optional<Usuario> getUsuarioByDni(Long dni){
        return usuarioRepository.findByDni(dni);
    }

    public Usuario getUsuarioById(Long id){
        return usuarioRepository.getReferenceById(id);
    }
    
    public boolean existsByDni(Long dni){
        return usuarioRepository.existsByDni(dni);
    }
    
    public void save(Usuario usuario){
        usuarioRepository.save(usuario);
    }

    public void delete(Usuario usuario){
        usuarioRepository.delete(usuario);
    }
    
    public List<Usuario> getUsuarios(){
        return usuarioRepository.findAll();
    }
}

