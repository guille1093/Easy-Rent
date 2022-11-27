package com.unam.poo.services.Correo;

import java.util.List;

import com.unam.poo.models.Correo;

public interface MailService {
    List<Correo> findAll();
    void deleteCorreoById(Long id);
    Correo getCorreoById(Long id);
    Correo getCorreoByMail(String correo);
    Correo saveCorreo(Correo correo);
}
