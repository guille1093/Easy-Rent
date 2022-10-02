package com.unam.poo.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "publicacion")

public class Publicacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_publicacion", nullable = false)
    private Integer id;

    @Column(name = "estado_publicacion", length = 20)
    private String estadoPublicacion = "activo";

    @Column(name = "fecha_hora_publicacion")
    private LocalDateTime fechaHoraPublicacion = LocalDateTime.now();

    @NotBlank(message = "El campo Calle es obligatorio")
    @Column(name = "calle_publicacion", length = 100)
    private String callePublicacion;

//    @NotBlank(message = "El campo Altura es obligatorio")
    @Column(name = "altura_publicacion")
    private Integer alturaPublicacion;

//    @NotBlank(message = "El campo Dormitorios es obligatorio")
    @Column(name = "dormitorios_publicacion")
    private Integer dormitoriosPublicacion;

//    @NotBlank(message = "El campo Baños es obligatorio")
    @Column(name = "banios_publicacion")
    private Integer baniosPublicacion;

//    @NotBlank(message = "El campo Cocheras es obligatorio")
    @Column(name = "cochera_publicacion")
    private Integer cocheraPublicacion;

//    @NotBlank(message = "El campo Ambientes es obligatorio")
    @Column(name = "ambientes_publicacion")
    private Integer ambientesPublicacion;

//    @NotBlank(message = "El campo Superficie cubierta es obligatorio")
    @Column(name = "superficie_cubierta_casa")
    private Double superficieCubiertaCasa;

    @Column(name = "imagen_uno_publicacion")
    private String imagenUnoPublicacion;

    @Column(name = "imagen_dos_publicacion")
    private byte[] imagenDosPublicacion;

    @Column(name = "imagen_tres_publicacion")
    private byte[] imagenTresPublicacion;

//    @NotBlank(message = "El campo Superficie total es obligatorio")
    @Column(name = "superficie_total_terreno")
    private Double superficieTotalTerreno;

//    @NotBlank(message = "El campo Precio es obligatorio")
    @Column(name = "precio_publicacion")
    private Double precioPublicacion;

    @Column(name = "titulo_publicacion")
    private String tituloPublicacion;

    @Column(name = "descripcion_publicacion")
    private String descripcionPublicacion;

//    @NotBlank(message = "El campo Tipo de propiedad es obligatorio")
    @ManyToOne(optional = false)
    @JoinColumn(name = "id_tipo", nullable = false)
    private Tipo idTipo;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_ciudad", nullable = false)
    private Ciudad idCiudad;




}