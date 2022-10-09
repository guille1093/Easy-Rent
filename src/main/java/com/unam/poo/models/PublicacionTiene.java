package com.unam.poo.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "publicacion_tiene", schema = "public", catalog = "playground")
@IdClass(PublicacionTienePK.class)
public class PublicacionTiene {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EmbeddedId
    private PublicacionTienePK id;

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @MapsId("idPublicacion")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_publicacion", nullable = false)
    private Publicacion idPublicacion;

    @MapsId("idCaracteristica")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_caracteristica", nullable = false)
    private CaracteristicaComodidad idCaracteristica;
}