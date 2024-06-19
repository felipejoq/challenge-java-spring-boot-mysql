package com.uncodigo.products.services.impl;

import com.uncodigo.products.dtos.SucursalProductoStockDto;
import com.uncodigo.products.repositories.IStockRepository;
import com.uncodigo.products.services.IStockService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StockServiceImpl implements IStockService {

    private final IStockRepository stockRepository;

    public StockServiceImpl(IStockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }

    @Override
    public List<SucursalProductoStockDto> obtenerSucursalProductoStock(Integer sucursalId, Integer productoId) {
        return stockRepository.findSucursalProductoStockBySucursalAndProducto(sucursalId, productoId);
    }
}
