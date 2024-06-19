package com.uncodigo.algoritmos.services.impl;

import com.uncodigo.algoritmos.dtos.SucursalStockDto;
import com.uncodigo.algoritmos.repositories.IStockRepository;
import com.uncodigo.algoritmos.services.IStockService;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StockServiceImpl implements IStockService {

    private final IStockRepository stockRepository;

    public StockServiceImpl(IStockRepository stockRepository) {
        this.stockRepository = stockRepository;
    }

    @Override
    public List<SucursalStockDto> obtenerTop3SucursalesConMayorStock(Integer productoId) {
        PageRequest pageable = PageRequest.of(0, 3);
        return stockRepository.findTop3SucursalesConMayorStock(productoId, pageable);
    }
}
