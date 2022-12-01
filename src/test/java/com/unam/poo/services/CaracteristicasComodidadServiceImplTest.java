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

import com.unam.poo.models.Comodidad;
import com.unam.poo.repository.ComodidadRepository;
import com.unam.poo.services.Comodidad.ComodidadServiceImpl;

@ExtendWith(MockitoExtension.class)
public class CaracteristicasComodidadServiceImplTest {
    


    @InjectMocks
    ComodidadServiceImpl comodidadServiceImpl;
    @Mock
    ComodidadRepository comodidadRepository;
    // atributos de pruebas
    private Comodidad comodidad1;
   

    @BeforeEach
    public void iniciar() {
        // inicio datos persona1
        comodidad1 = new Comodidad();
        ReflectionTestUtils.setField(comodidad1, "idComodidad", 1);
        comodidad1.setComodidad("Bidé");
    }

    @Test
    public void getCaracteristicaComodidadById() {
        // se determina que retorna el mock
        when(comodidadRepository.findById((long) 1)).thenReturn(Optional.ofNullable(comodidad1));
        // se invoca al servicio
        var comodidadRecuperada = comodidadServiceImpl.getComodidadById((long) 1);
        verify(comodidadRepository, times(1)).findById((long) 1);
        // prueba
        assertEquals(comodidad1, comodidadRecuperada);
    }

    // @Test
    // public void agregoPersona() {
    //     // se determina que retorna el mock
    //     when(personaRepositorio.save(persona1)).thenReturn(persona1);
    //     // se invoca al servicio
    //     personaServicio.agregarPersona(persona1);
    //     // se verifica que el nro. de invocaciones al mock es de 1
    //     verify(personaRepositorio, times(1)).save(persona1);
    // }

    // @Test
    // public void buscoPersonaPorId() {
    //     // se determina que retorna el mock
    //     when(personaRepositorio.findById(1)).thenReturn(Optional.ofNullable(persona1));
    //     // se invoca al servicio
    //     var personaRecuperada = personaServicio.buscarPersonaPorId(1);
    //     // se verifica que el nro. de invocaciones al mock es de 1
    //     verify(personaRepositorio, times(1)).findById(1);
    //     // prueba
    //     assertEquals(persona1, personaRecuperada);
    // }

    // @Test
    // public void buscoPersonaPorIdErroneo() {
    //     // se determina que retorna el mock
    //     when(personaRepositorio.findById(1)).thenReturn(Optional.empty());
    //     // prueba invocando al servicio
    //     assertThrows(EntidadNoEncontradaExcepcion.class, () -> personaServicio.buscarPersonaPorId(1));                
    //     // se verifica que el nro. de invocaciones al mock es de 1
    //     verify(personaRepositorio, times(1)).findById(1);
    // }

    // @Test
    // public void editoPersonaPorId() {
    //     // se determina que retorna el mock
    //     when(personaRepositorio.findById(1)).thenReturn(Optional.of(persona1));
    //     // se invoca al servicio
    //     personaServicio.actualizarPersonaPorId(1, persona1);
    //     // se verifica el nro. de invocaciones al mock
    //     verify(personaRepositorio, times(1)).findById(1);
    //     verify(personaRepositorio, times(1)).save(persona1);
    //     // se verifica que no existan otras invocaciones
    //     verifyNoMoreInteractions(personaRepositorio);
    // }

    // @Test
    // public void deleteCaracteristicaComodidadById() {
    //     // se determina que retorna el mock
    //     when(comodidadRepository.findById((long) 1)).thenReturn(Optional.of(comodidad1));
    //     // se invoca al servicio
    //     comodidadServiceImpl.deleteComodidadById((long) 1);
    //     // se verifica el nro. de invocaciones al mock
    //     verify(comodidadRepository, times(1)).deleteById((long) 1);
    //     // se verifica que no existan otras invocaciones
    //     verifyNoMoreInteractions(comodidadRepository);
    // }
}
