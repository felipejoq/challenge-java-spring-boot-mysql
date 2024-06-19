package com.uncodigo.products.models;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "venta")
public class Venta {

    @Id
    @Column(name = "idVenta")
    private Integer id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FK_rutCliente")
    private Cliente cliente;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FK_idAdministrador")
    private Administrador administrador;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FK_idSucursal")
    private Sucursal sucursal;

    @Temporal(TemporalType.DATE)
    @Column(name = "fechaVenta")
    private Date fechaVenta;

    public Venta() {
    }

    public Venta(Integer id, Cliente cliente, Administrador administrador, Sucursal sucursal, Date fechaVenta) {
        this.id = id;
        this.cliente = cliente;
        this.administrador = administrador;
        this.sucursal = sucursal;
        this.fechaVenta = fechaVenta;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Administrador getAdministrador() {
        return administrador;
    }

    public void setAdministrador(Administrador administrador) {
        this.administrador = administrador;
    }

    public Sucursal getSucursal() {
        return sucursal;
    }

    public void setSucursal(Sucursal sucursal) {
        this.sucursal = sucursal;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }
}
