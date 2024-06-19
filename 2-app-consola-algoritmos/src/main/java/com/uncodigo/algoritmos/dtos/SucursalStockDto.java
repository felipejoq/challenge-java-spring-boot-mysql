package com.uncodigo.algoritmos.dtos;

public class SucursalStockDto {
    private String nombreSucursal;
    private Long cantidadStock;

    public SucursalStockDto(String nombreSucursal, Long cantidadStock) {
        this.nombreSucursal = nombreSucursal;
        this.cantidadStock = cantidadStock;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public Long getCantidadStock() {
        return cantidadStock;
    }

    public void setCantidadStock(Long cantidadStock) {
        this.cantidadStock = cantidadStock;
    }
}
