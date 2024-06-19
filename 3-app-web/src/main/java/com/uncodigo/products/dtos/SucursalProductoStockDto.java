package com.uncodigo.products.dtos;

public class SucursalProductoStockDto {
    private Integer idSucursal;
    private String nombreSucursal;
    private Integer idProducto;
    private String nombreProducto;
    private Integer cantidadStock;

    public SucursalProductoStockDto(Integer idSucursal, String nombreSucursal, Integer idProducto, String nombreProducto, Integer cantidadStock) {
        this.idSucursal = idSucursal;
        this.nombreSucursal = nombreSucursal;
        this.idProducto = idProducto;
        this.nombreProducto = nombreProducto;
        this.cantidadStock = cantidadStock;
    }

    // Getters y setters

    public Integer getIdSucursal() {
        return idSucursal;
    }

    public void setIdSucursal(Integer idSucursal) {
        this.idSucursal = idSucursal;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public Integer getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(Integer idProducto) {
        this.idProducto = idProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public Integer getCantidadStock() {
        return cantidadStock;
    }

    public void setCantidadStock(Integer cantidadStock) {
        this.cantidadStock = cantidadStock;
    }
}
