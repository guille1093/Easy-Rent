package com.unam.poo.models;

import jakarta.persistence.*;

import java.io.Serializable;
import java.util.Objects;

public class PublicacionTienePK implements Serializable {


    @Id
    @JoinColumn(name = "id_caracteristica", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("idCaracteristica")
    private CaracteristicaComodidad idCaracteristica;

    @Id
    @JoinColumn(name = "id_publicacion", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @MapsId("idPublicacion")
    private Publicacion idPublicacion;
}
