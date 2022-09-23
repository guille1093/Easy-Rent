package com.unam.poo.models;

import jakarta.persistence.*;

@Entity
@Table(name = "publicacion_tiene")
public class PublicacionTiene {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EmbeddedId
    private PublicacionTieneId id;

    @MapsId("idPublicacion")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_publicacion", nullable = false)
    private Publicacion idPublicacion;

    @MapsId("idComodidad")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_comodidad", nullable = false)
    private ComodidadPropiedad idComodidad;

    public PublicacionTieneId getId() {
        return id;
    }

    public void setId(PublicacionTieneId id) {
        this.id = id;
    }

    public Publicacion getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(Publicacion idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    public ComodidadPropiedad getIdComodidad() {
        return idComodidad;
    }

    public void setIdComodidad(ComodidadPropiedad idComodidad) {
        this.idComodidad = idComodidad;
    }

}