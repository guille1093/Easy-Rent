package com.unam.poo.models;

import jakarta.persistence.*;

@Entity
@Table(name = "comodidad_propiedad")
public class ComodidadPropiedad {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_comodidad", nullable = false)
    private Integer id;

    @Column(name = "comodidad", length = 100)
    private String comodidad;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComodidad() {
        return comodidad;
    }

    public void setComodidad(String comodidad) {
        this.comodidad = comodidad;
    }

}