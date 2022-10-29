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
        }else{
            return null;
        }
    }
}

