package com.uncodigo.algoritmos.dtos;

public class SucursalVentasDto {
    private String nombreSucursal;
    private Long cantidadVentas;

    public SucursalVentasDto(String nombreSucursal, Long cantidadVentas) {
        this.nombreSucursal = nombreSucursal;
        this.cantidadVentas = cantidadVentas;
    }

    public String getNombreSucursal() {
        return nombreSucursal;
    }

    public void setNombreSucursal(String nombreSucursal) {
        this.nombreSucursal = nombreSucursal;
    }

    public Long getCantidadVentas() {
        return cantidadVentas;
    }

    public void setCantidadVentas(Long cantidadVentas) {
        this.cantidadVentas = cantidadVentas;
    }
}
