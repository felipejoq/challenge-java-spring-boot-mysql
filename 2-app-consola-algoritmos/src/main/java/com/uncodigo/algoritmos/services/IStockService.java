package com.uncodigo.algoritmos.services;

import com.uncodigo.algoritmos.dtos.SucursalStockDto;

import java.util.List;

public interface IStockService {
    List<SucursalStockDto> obtenerTop3SucursalesConMayorStock(Integer productoId);
}
