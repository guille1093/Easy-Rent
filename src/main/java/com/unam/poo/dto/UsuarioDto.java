package com.unam.poo.dto;
 

import jakarta.persistence.*;
import jakarta.persistence.Basic;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UsuarioDto { 
    
    private String correo;

    private Long dni;   

    private String nombre;

    private String apellido;

    private String contraseña;
}
