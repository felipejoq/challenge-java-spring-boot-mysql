package com.uncodigo.products.controllers;

import com.uncodigo.products.dtos.SucursalProductoStockDto;
import com.uncodigo.products.services.IStockService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/api")
@RestController
public class ApiRestController {

    private final IStockService stockService;

    public ApiRestController(IStockService stockService) {
        this.stockService = stockService;
    }

    @GetMapping("/stocks")
    public List<SucursalProductoStockDto> getStocks(
            @RequestParam(required = false, defaultValue = "0") Integer sucursalId,
            @RequestParam(required = false, defaultValue = "0") Integer productoId
    ) {
        return stockService.obtenerSucursalProductoStock(sucursalId, productoId);
    }
}
