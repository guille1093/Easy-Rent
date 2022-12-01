package com.unam.poo.services;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;

import com.unam.poo.models.Ciudad;
import com.unam.poo.models.Pais;
import com.unam.poo.models.Provincia;
import com.unam.poo.repository.CiudadRepository;
import com.unam.poo.services.Ciudad.CiudadServiceImpl;

@ExtendWith(MockitoExtension.class)
public class CiudadServiceImplTests {
    
    @InjectMocks
    CiudadServiceImpl ciudadServiceImpl;
    
    @Mock
    CiudadRepository ciudadRepository;
    Ciudad ciudad;
    Provincia provincia;
    Pais pais;
    
    @BeforeEach
    public void iniciar() {
        // inicio datos pais
        pais = new Pais();
        ReflectionTestUtils.setField(pais, "id", 1);
        pais.setPais("Argentina");
        // inicio datos provincia
        provincia = new Provincia();
        ReflectionTestUtils.setField(provincia, "id", 1);
        provincia.setProvincia("Misiones");
        provincia.setIdPais(pais);
        //incio datos ciudad
        ciudad = new Ciudad();
        ReflectionTestUtils.setField(ciudad, "id", (long)1);
        ciudad.setCiudad("Posadas");
        ciudad.setIdProvincia(provincia);
    }

    @Test
    public void getCiudadById() {
        // se determina que retorna el mock
        when(ciudadRepository.findById((long) 1)).thenReturn(Optional.ofNullable(ciudad));
        // se invoca al servicio
        var ciudadRecuperada = ciudadServiceImpl.getCiudadById((long) 1);
        verify(ciudadRepository, times(1)).findById((long) 1);
        // prueba
        assertEquals(ciudad, ciudadRecuperada);
    }

    @Test
    public void saveCiudad() {
        // se determina que retorna el mock
        when(ciudadRepository.save(ciudad)).thenReturn(ciudad);
        // se invoca al servicio
        ciudadServiceImpl.saveCiudad(ciudad);
        // se verifica que el nro. de invocaciones al mock es de 1
        verify(ciudadRepository, times(1)).save(ciudad);
    }


}
