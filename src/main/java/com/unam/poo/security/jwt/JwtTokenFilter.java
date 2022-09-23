package com.unam.poo.security.jwt;

import java.io.IOException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.filter.OncePerRequestFilter;
import com.unam.poo.security.services.UserDetailsServiceImpl;

public class JwtTokenFilter extends OncePerRequestFilter{

    private final static Logger log = LoggerFactory.getLogger(JwtTokenFilter.class);
    
    @Autowired
    JwtProvider jwtProvider;
    
    @Autowired
    UserDetailsServiceImpl userDetailsService;
    
    @Override
    protected void doFilterInternal(HttpServletRequest req, HttpServletResponse res, FilterChain filterChain) throws ServletException, IOException {
        try {
            String token = this.getToken(req);
            if (token != null && jwtProvider.validateToken(token)){
                String dniUsuario = jwtProvider.getNombreUsuarioFromToken(token);
                UserDetails userDetails = userDetailsService.loadUserByUsername(dniUsuario);
                UsernamePasswordAuthenticationToken auth = new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
                SecurityContextHolder.getContext().setAuthentication(auth);
                
            }
        } catch (UsernameNotFoundException e) {
            log.error("Error en el metodo doFilterInternal");
        }
        filterChain.doFilter(req, res);
       
    }
    
    private String getToken(HttpServletRequest request){
        System.out.println("Obteniendo Token");
        String header = request.getHeader("Authorization");
        if (header != null && header.startsWith("Bearer")){
            return header.replace("Bearer ", "");
        }
        return null;
    }
}
