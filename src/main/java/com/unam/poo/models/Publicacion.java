package com.unam.poo.models;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@Entity
@jakarta.persistence.Table(name="publicacion")
public class Publicacion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String estado;
    private LocalDateTime fecha_hora;

//    Ubicación (maps)
    private String calle;
    private int altura;
//    private String ubicacion;  latitud, longitud    https://www.google.com.ar/maps/@    -27.7718349,    -55.7710707,19z

//    Caracteristicas generales: ambientes, baños, cocheras, dormitorios
    private int dormitorios;
    private int banios;
    private int cochera;
    private int ambientes;

//    Superficie
    private int superficie_cubierto_casa;
    private int superficie_total_terreno;

//    Precio
    private String precio;

//    Descripcion
    private String titulo;
    private String descripcion;

//    Imagen en otra tabla
//    private String imagen;

}
