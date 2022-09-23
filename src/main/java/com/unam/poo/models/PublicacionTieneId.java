package com.unam.poo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import org.hibernate.Hibernate;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class PublicacionTieneId implements Serializable {
    private static final long serialVersionUID = 8196076078005893372L;
    @Column(name = "id_publicacion", nullable = false)
    private Integer idPublicacion;

    @Column(name = "id_comodidad", nullable = false)
    private Integer idComodidad;

    public Integer getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(Integer idPublicacion) {
        this.idPublicacion = idPublicacion;
    }

    public Integer getIdComodidad() {
        return idComodidad;
    }

    public void setIdComodidad(Integer idComodidad) {
        this.idComodidad = idComodidad;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        PublicacionTieneId entity = (PublicacionTieneId) o;
        return Objects.equals(this.idComodidad, entity.idComodidad) &&
                Objects.equals(this.idPublicacion, entity.idPublicacion);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idComodidad, idPublicacion);
    }

}