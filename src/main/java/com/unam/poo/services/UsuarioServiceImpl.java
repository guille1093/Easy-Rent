package com.unam.poo.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unam.poo.models.Usuario;
import com.unam.poo.repository.PublicacionRepository;
import com.unam.poo.repository.UsuarioRepository;

@Service
public class UsuarioServiceImpl implements UsuarioService {

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private PublicacionRepository publicacionRepository;

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
    
    @Override
    public Usuario getUsuarioByCorreo(String correo){
        List<Usuario> usuarios = usuarioRepository.findAll();
        Usuario aux = new Usuario();
        aux.setId(-1); 
        for (int i = 0; i < usuarios.size(); i++) { 
            if (correo.equals(usuarios.get(i).getCorreo())){
                System.out.println("Encontrado: " + usuarios.get(i).getCorreo());
                aux = usuarios.get(i);
            }
        }
        if (aux.getId() > 0){
            return aux;
        }
        return null;
        
    }

    @Override
    public void agregarFavoritos(Long idPublicacion, Long id) {
        Usuario usuario = usuarioRepository.findById(id).get();
        usuario.getFavoritos().add(publicacionRepository.findById(idPublicacion).get());
        usuarioRepository.save(usuario);
    }

    @Override
    public void quitarFavoritos(Long idPublicacion, Long id) {
        Usuario usuario = usuarioRepository.findById(id).get();
        usuario.getFavoritos().remove(publicacionRepository.findById(idPublicacion).get());
        usuarioRepository.save(usuario);
    }

}

