package com.unam.poo.models;

import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.unam.poo.security.modelo.Rol;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
//import org.hibernate.validator.constraints.NotBlank;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

//import java.util.Objects;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name="usuario")
public class Usuario { 
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Basic
    @Column(name = "correo")
    @NotBlank(message = "El correo no puede estar vacio")
    private String correo;

    @Basic
    @Column(name = "telefono")
    @NotBlank(message = "El telefono no puede estar vacio")
    private String telefono;

    @Basic
    @Column(name = "descripcion")
    private String descripcion;

    @Basic
    @Column(name = "dni")
    @NotNull
    private Long dni;   

    @Basic
    @Column(name = "nombre")
    @NotBlank(message = "El nombre no puede estar vacio")
    private String nombre;

    @Basic
    @Column(name = "apellido")
    @NotBlank(message = "El apellido no puede estar vacio")
    private String apellido;

    @Basic
    @Column(name = "contraseña")
    @NotBlank(message = "La contraseña no puede estar vacia")
    private String contraseña;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "usuario_rol", joinColumns = @JoinColumn(name = "id_usuario"), inverseJoinColumns = @JoinColumn(name = "id_rol"))
    private Set<Rol> roles = new HashSet<>();

    @ManyToOne()
    @JoinColumn(name = "ciudad_id")  
    @JsonBackReference
    //@NotBlank(message = "La ciudad no puede estar vacia")
    private Ciudad ciudad;

//    agregar a favoritos
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "usuario_publicacion", joinColumns = @JoinColumn(name = "id_usuario"), inverseJoinColumns = @JoinColumn(name = "id_publicacion"))
    @JsonManagedReference
    private Set<Publicacion> favoritos = new HashSet<>();

}