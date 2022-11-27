package com.unam.poo.services.Correo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.unam.poo.models.Correo;
import com.unam.poo.repository.MailRepository;

@Service
public class MailServiceImpl implements MailService {

    @Autowired
    MailRepository mailRepository;

    @Override
    public List<Correo> findAll() {
        return mailRepository.findAll();
    }

    @Override
    public void deleteCorreoById(Long id) {
        mailRepository.deleteById(id);
    }

    @Override
    public Correo getCorreoById(Long id) {
        return mailRepository.findById(id).orElse(null);
    }

    @Override
    public Correo saveCorreo(Correo correo) {
        return mailRepository.save(correo);
    }

    @Override
    public Correo getCorreoByMail(String mail) {
        for (Correo correo : mailRepository.findAll()) {
            if (correo.getUsuario().getCorreo().equals(mail)){
                return correo;
            }
        }
        return null;
    }
    
}
