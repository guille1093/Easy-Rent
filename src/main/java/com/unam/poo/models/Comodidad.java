package com.unam.poo.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter; 

@Getter
@Setter
@NoArgsConstructor
@Entity
public class Comodidad {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_comodidad")
    private Integer idComodidad;

    @Basic
    @Column(name = "comodidad")
    private String comodidad;

}
