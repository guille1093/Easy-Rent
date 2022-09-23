package com.unam.poo.models;

import jakarta.persistence.*;

@Entity
@Table(name = "ciudad")
public class Ciudad {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_ciudad", nullable = false)
    private Integer id;

    @Column(name = "ciudad", length = 100)
    private String ciudad;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_provincia", nullable = false)
    private Provincia idProvincia;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public Provincia getIdProvincia() {
        return idProvincia;
    }

    public void setIdProvincia(Provincia idProvincia) {
        this.idProvincia = idProvincia;
    }

}