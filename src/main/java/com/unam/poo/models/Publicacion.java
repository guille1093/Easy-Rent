package com.unam.poo.models;

import jakarta.persistence.*;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;


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

    @Basic
    @Column(name = "estado_publicacion", length = 20)
    private String estadoPublicacion = "activo";
    @Basic
    @Column(name = "fecha_hora_publicacion")
    private LocalDateTime fechaHoraPublicacion = LocalDateTime.now();
    @Basic
    @NotBlank(message = "El campo Calle es obligatorio")
    @Column(name = "calle_publicacion", length = 100)
    private String callePublicacion;
    //    @NotBlank(message = "El campo Altura es obligatorio")
    @Basic
    @Column(name = "altura_publicacion")
    private Integer alturaPublicacion;
    //    @NotBlank(message = "El campo Dormitorios es obligatorio")
    @Basic
    @Column(name = "dormitorios_publicacion")
    private Integer dormitoriosPublicacion;
    //    @NotBlank(message = "El campo Baños es obligatorio")
    @Basic
    @Column(name = "banios_publicacion")
    private Integer baniosPublicacion;
    //    @NotBlank(message = "El campo Cocheras es obligatorio")
    @Basic
    @Column(name = "cochera_publicacion")
    private Integer cocheraPublicacion;
    //    @NotBlank(message = "El campo Ambientes es obligatorio")
    @Basic
    @Column(name = "ambientes_publicacion")
    private Integer ambientesPublicacion;

    //    @NotBlank(message = "El campo Superficie cubierta es obligatorio")
    @Basic
    @Column(name = "superficie_cubierta_casa")
    private Double superficieCubiertaCasa;

    //    @NotBlank(message = "El campo Superficie total es obligatorio")
    @Basic
    @Column(name = "superficie_total_terreno")
    private Double superficieTotalTerreno;
    //    @NotBlank(message = "El campo Precio es obligatorio")
    @Basic
    @Column(name = "precio_publicacion")
    private Double precioPublicacion;
    @Basic
    @Column(name = "titulo_publicacion")
    private String tituloPublicacion;
    @Basic
    @Column(name = "descripcion_publicacion", length = 500)
    private String descripcionPublicacion;

//    crear longitud y latitud para la ubicacion en el mapa
    @Basic
    @Column(name = "longitud_publicacion")
    private Double longitudPublicacion;

    @Basic
    @Column(name = "latitud_publicacion")
    private Double latitudPublicacion;

//    validar el idTipo
//    @NotEmpty(groups = {Publicacion.class}, message = "El campo Tipo es obligatorio")
    @NotNull(message = "El campo Tipo es obligatorio")
    @ManyToOne(optional = false)
    @JoinColumn(name = "id_tipo", nullable = false)
    private Tipo idTipo;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_ciudad", nullable = false)
    private Ciudad idCiudad;


    @ManyToMany
    @JoinTable(name = "publicación_tiene_caracteristica",
            joinColumns = @JoinColumn(name = "id_publicacion"),
            inverseJoinColumns = @JoinColumn(name = "id_caracteristica"))
    private List<CaracteristicaComodidad> caracteristicasComodidades;

}