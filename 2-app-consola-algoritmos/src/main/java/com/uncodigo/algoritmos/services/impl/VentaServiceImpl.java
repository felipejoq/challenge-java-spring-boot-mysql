package com.uncodigo.algoritmos.services.impl;

import com.uncodigo.algoritmos.dtos.SucursalVentasDto;
import com.uncodigo.algoritmos.repositories.IVentaRepository;
import com.uncodigo.algoritmos.services.IVentaService;
import org.springframework.stereotype.Service;

import java.util.Scanner;

@Service
public class VentaServiceImpl implements IVentaService {

    private final IVentaRepository ventaRepository;

    public VentaServiceImpl(IVentaRepository ventaRepository) {
        this.ventaRepository = ventaRepository;
    }

    @Override
    public SucursalVentasDto obtenerVentasPorSucursal(Integer idSucursal) {

        return ventaRepository.findSucursalNombreYCantidadVentas(idSucursal);

    }
}
