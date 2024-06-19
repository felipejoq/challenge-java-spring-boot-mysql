package com.uncodigo.products.models;

import com.uncodigo.products.models.indexes.StockId;
import jakarta.persistence.*;

@Entity
@Table(name = "stock")
@IdClass(StockId.class)
public class Stock {

    @Id
    @Column(name = "FK_idProducto")
    private Integer idProducto;

    @Id
    @Column(name = "FK_idSucursal")
    private Integer idSucursal;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FK_idProducto", insertable = false, updatable = false)
    private Producto producto;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "FK_idSucursal", insertable = false, updatable = false)
    private Sucursal sucursal;

    @Column(name = "stock")
    private Integer cantidad;

    public Stock() {
    }

    public Stock(Integer idProducto, Integer idSucursal, Producto producto, Sucursal sucursal, Integer cantidad) {
        this.idProducto = idProducto;
        this.idSucursal = idSucursal;
        this.producto = producto;
        this.sucursal = sucursal;
        this.cantidad = cantidad;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public Integer getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(Integer idSucursal) {
        this.idSucursal = idSucursal;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    public Sucursal getSucursal() {
        return sucursal;
    }

    public void setSucursal(Sucursal sucursal) {
        this.sucursal = sucursal;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }
}
