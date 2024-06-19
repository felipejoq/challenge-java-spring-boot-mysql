package com.uncodigo.products.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cliente")
public class Cliente {

    @Id
    @Column(name = "rutCliente")
    private String rut;

    @Column(name = "nombreCliente")
    private String nombre;

    @Column(name = "primerApellidoCliente")
    private String primerApellido;

    @Column(name = "segundoApellidoCliente")
    private String segundoApellido;

    @Column(name = "direccionCliente")
    private String direccion;

    @Column(name = "comunaCliente")
    private String comuna;

    @Column(name = "telefonoCliente")
    private String telefono;

    @Column(name = "e-mailCliente")
    private String email;

    public Cliente() {
    }

    public Cliente(String rut, String nombre, String primerApellido, String segundoApellido, String direccion, String comuna, String telefono, String email) {
        this.rut = rut;
        this.nombre = nombre;
        this.primerApellido = primerApellido;
        this.segundoApellido = segundoApellido;
        this.direccion = direccion;
        this.comuna = comuna;
        this.telefono = telefono;
        this.email = email;
    }


    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPrimerApellido() {
        return primerApellido;
    }

    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }

    public String getSegundoApellido() {
        return segundoApellido;
    }

    public void setSegundoApellido(String segundoApellido) {
        this.segundoApellido = segundoApellido;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
