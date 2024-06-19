package com.uncodigo.products.services;

import com.uncodigo.products.dtos.SucursalProductoStockDto;

import java.util.List;

public interface IStockService {
    List<SucursalProductoStockDto> obtenerSucursalProductoStock(
            Integer sucursalId, Integer productoId
    );
}
