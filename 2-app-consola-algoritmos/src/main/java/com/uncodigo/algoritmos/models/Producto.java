package com.uncodigo.algoritmos.models;

import jakarta.persistence.*;

@Entity
@Table(name = "producto")
public class Producto {

    @Id
    @Column(name = "idProducto")
    private Integer id;

    @Column(name = "nombreProducto")
    private String nombre;

    @Column(name = "descripcionProducto")
    private String descripcion;

    @Column(name = "precioProducto")
    private Integer precio;

    @OneToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FK_idCategoriaProducto")
    private Categoria categoria;

    public Producto() {
    }

    public Producto(Integer id, String nombre, String descripcion, Integer precio, Categoria categoria) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio = precio;
        this.categoria = categoria;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
}
