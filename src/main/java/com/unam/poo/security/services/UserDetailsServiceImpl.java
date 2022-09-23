package com.unam.poo.security.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.unam.poo.models.Usuario;
import com.unam.poo.security.models.UsuarioPrincipal;
import com.unam.poo.services.UsuarioService;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
    
    @Autowired
    UsuarioService usuarioService;
    
    @Override
    public UserDetails loadUserByUsername(String dniUsuario) throws UsernameNotFoundException {
        Usuario usuario = usuarioService.getUsuarioByDni(Long.valueOf(dniUsuario)).get();
        return UsuarioPrincipal.build(usuario);
    }
    
}
