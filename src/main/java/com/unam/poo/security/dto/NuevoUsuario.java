package com.unam.poo.security.dto;

import java.util.HashSet;
import java.util.Set;

import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class NuevoUsuario {
    @NotBlank
    private String nombre;
    @NotBlank
    private String apellido;
    @NotBlank
    private String correo;
    @NotBlank
    private Long dni;
    @NotBlank
    private String password;
    @NotBlank
    private Set<String> roles = new HashSet<>();
}