package com.uncodigo.algoritmos.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "categoria_producto")
public class Categoria {
    @Id
    @Column(name = "idCategoriaProducto")
    private Integer id;

    @Column(name = "nombreCategoriaProducto")
    private String nombre;

    @Column(name = "descripcionCategoriaProducto")
    private String descripcion;
}
