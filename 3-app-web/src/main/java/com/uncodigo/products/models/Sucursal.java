package com.uncodigo.products.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "sucursal")
public class Sucursal {

    @Id
    @Column(name = "idSucursal")
    private Integer id;

    @Column(name = "nombreSucursal")
    private String nombre;

    @Column(name = "direccionSucursal")
    private String direccion;

    @Column(name = "comunaSucursal")
    private String comuna;

    @Column(name = "telefonoSucursal")
    private String telefono;

    public Sucursal() {
    }

    public Sucursal(Integer id, String nombre, String direccion, String comuna, String telefono) {
        this.id = id;
        this.nombre = nombre;
        this.direccion = direccion;
        this.comuna = comuna;
        this.telefono = telefono;
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

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getComuna() {
        return comuna;
    }

    public void setComuna(String comuna) {
        this.comuna = comuna;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
}
