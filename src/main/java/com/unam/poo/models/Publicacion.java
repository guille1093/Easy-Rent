package com.unam.poo.models;

import jakarta.persistence.*;

import java.time.LocalTime;

@Entity
@Table(name = "publicacion")
public class Publicacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_publicacion", nullable = false)
    private Integer id;

    @Column(name = "estado_publicacion", length = 20)
    private String estadoPublicacion;

    @Column(name = "fecha_hora_publicacion")
    private LocalTime fechaHoraPublicacion;

    @Column(name = "calle_publicacion", length = 100)
    private String callePublicacion;

    @Column(name = "altura_publicacion")
    private Integer alturaPublicacion;

    @Column(name = "dormitorios_publicacion")
    private Integer dormitoriosPublicacion;

    @Column(name = "banios_publicacion")
    private Integer baniosPublicacion;

    @Column(name = "cochera_publicacion")
    private Integer cocheraPublicacion;

    @Column(name = "ambientes_publicacion")
    private Integer ambientesPublicacion;

    @Column(name = "superficie_cubierta_casa")
    private Double superficieCubiertaCasa;

    @Column(name = "imagen_uno_publicacion")
    private byte[] imagenUnoPublicacion;

    @Column(name = "imagen_dos_publicacion")
    private byte[] imagenDosPublicacion;

    @Column(name = "imagen_tres_publicacion")
    private byte[] imagenTresPublicacion;

    @Column(name = "superficie_total_terreno")
    private Double superficieTotalTerreno;

    @Column(name = "precio_publicacion")
    private Double precioPublicacion;

    @Column(name = "titulo_publicacion")
    private String tituloPublicacion;

    @Column(name = "descripcion_publicacion")
    private String descripcionPublicacion;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_tipo", nullable = false)
    private Tipo idTipo;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_ciudad", nullable = false)
    private Ciudad idCiudad;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEstadoPublicacion() {
        return estadoPublicacion;
    }

    public void setEstadoPublicacion(String estadoPublicacion) {
        this.estadoPublicacion = estadoPublicacion;
    }

    public LocalTime getFechaHoraPublicacion() {
        return fechaHoraPublicacion;
    }

    public void setFechaHoraPublicacion(LocalTime fechaHoraPublicacion) {
        this.fechaHoraPublicacion = fechaHoraPublicacion;
    }

    public String getCallePublicacion() {
        return callePublicacion;
    }

    public void setCallePublicacion(String callePublicacion) {
        this.callePublicacion = callePublicacion;
    }

    public Integer getAlturaPublicacion() {
        return alturaPublicacion;
    }

    public void setAlturaPublicacion(Integer alturaPublicacion) {
        this.alturaPublicacion = alturaPublicacion;
    }

    public Integer getDormitoriosPublicacion() {
        return dormitoriosPublicacion;
    }

    public void setDormitoriosPublicacion(Integer dormitoriosPublicacion) {
        this.dormitoriosPublicacion = dormitoriosPublicacion;
    }

    public Integer getBaniosPublicacion() {
        return baniosPublicacion;
    }

    public void setBaniosPublicacion(Integer baniosPublicacion) {
        this.baniosPublicacion = baniosPublicacion;
    }

    public Integer getCocheraPublicacion() {
        return cocheraPublicacion;
    }

    public void setCocheraPublicacion(Integer cocheraPublicacion) {
        this.cocheraPublicacion = cocheraPublicacion;
    }

    public Integer getAmbientesPublicacion() {
        return ambientesPublicacion;
    }

    public void setAmbientesPublicacion(Integer ambientesPublicacion) {
        this.ambientesPublicacion = ambientesPublicacion;
    }

    public Double getSuperficieCubiertaCasa() {
        return superficieCubiertaCasa;
    }

    public void setSuperficieCubiertaCasa(Double superficieCubiertaCasa) {
        this.superficieCubiertaCasa = superficieCubiertaCasa;
    }

    public byte[] getImagenUnoPublicacion() {
        return imagenUnoPublicacion;
    }

    public void setImagenUnoPublicacion(byte[] imagenUnoPublicacion) {
        this.imagenUnoPublicacion = imagenUnoPublicacion;
    }

    public byte[] getImagenDosPublicacion() {
        return imagenDosPublicacion;
    }

    public void setImagenDosPublicacion(byte[] imagenDosPublicacion) {
        this.imagenDosPublicacion = imagenDosPublicacion;
    }

    public byte[] getImagenTresPublicacion() {
        return imagenTresPublicacion;
    }

    public void setImagenTresPublicacion(byte[] imagenTresPublicacion) {
        this.imagenTresPublicacion = imagenTresPublicacion;
    }

    public Double getSuperficieTotalTerreno() {
        return superficieTotalTerreno;
    }

    public void setSuperficieTotalTerreno(Double superficieTotalTerreno) {
        this.superficieTotalTerreno = superficieTotalTerreno;
    }

    public Double getPrecioPublicacion() {
        return precioPublicacion;
    }

    public void setPrecioPublicacion(Double precioPublicacion) {
        this.precioPublicacion = precioPublicacion;
    }

    public String getTituloPublicacion() {
        return tituloPublicacion;
    }

    public void setTituloPublicacion(String tituloPublicacion) {
        this.tituloPublicacion = tituloPublicacion;
    }

    public String getDescripcionPublicacion() {
        return descripcionPublicacion;
    }

    public void setDescripcionPublicacion(String descripcionPublicacion) {
        this.descripcionPublicacion = descripcionPublicacion;
    }

    public Tipo getIdTipo() {
        return idTipo;
    }

    public void setIdTipo(Tipo idTipo) {
        this.idTipo = idTipo;
    }

    public Ciudad getIdCiudad() {
        return idCiudad;
    }

    public void setIdCiudad(Ciudad idCiudad) {
        this.idCiudad = idCiudad;
    }

}