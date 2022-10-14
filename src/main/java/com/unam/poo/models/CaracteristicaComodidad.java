package com.unam.poo.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
 
@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "caracteristica_comodidad", schema = "public", catalog = "playground")
public class CaracteristicaComodidad {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_caracteristica")
    private Integer idCaracteristica;
    @Basic
    @Column(name = "nombre_caracteristica")
    private String nombreCaracteristica;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_comodidad", nullable = false)
    private Comodidad idComodidad;


}
