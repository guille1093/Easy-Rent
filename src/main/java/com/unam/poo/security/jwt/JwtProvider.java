package com.unam.poo.security.jwt;


import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SignatureException;
import io.jsonwebtoken.UnsupportedJwtException;

import java.util.Base64;
import java.util.Date;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import com.unam.poo.security.models.UsuarioPrincipal;

@Component
public class JwtProvider {
    
    private final static Logger logger = LoggerFactory.getLogger(JwtProvider.class);
    
    @Value("${jwt.secret}")
    private String secret;
    
    @Value("${jwt.expiration}")
    private int expiration;
    
    public String generateToken(Authentication authentication){
        UsuarioPrincipal usuarioPrincipal = (UsuarioPrincipal) authentication.getPrincipal();
        String tokenId= String.valueOf(new Random().nextInt(10000));
        return Jwts.builder()
                .setId(tokenId)
                .setSubject(usuarioPrincipal.getUsername())
                .setIssuedAt(new Date())
                .setExpiration(new Date(new Date().getTime() + expiration * 1000))
                .signWith(SignatureAlgorithm.HS512, Base64.getEncoder().encode(secret.getBytes()))
                .compact();
    }
    
    public String getNombreUsuarioFromToken(String token){
        return Jwts.parser().setSigningKey(Base64.getEncoder().encode(secret.getBytes())).parseClaimsJws(token).getBody().getSubject();
    }
    
    public boolean validateToken(String token){
        try {
            Jwts.parser().setSigningKey(Base64.getEncoder().encode(secret.getBytes())).parseClaimsJws(token);
            return true;
        } catch (MalformedJwtException e) {
            logger.error("Token malformado: " + e.getMessage());
        } catch (UnsupportedJwtException e) {
            logger.error("Token no soportado: " + e.getMessage());
        } catch (ExpiredJwtException e) {
            logger.error("Token expirado: " + e.getMessage());
        } catch (IllegalArgumentException e) {
            logger.error("Token vacio: " + e.getMessage());
        } catch (SignatureException e) {
            logger.error("Error en la firma: " + e.getMessage());
        }
        return false;
    }
}