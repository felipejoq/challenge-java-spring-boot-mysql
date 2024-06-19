package com.uncodigo.algoritmos.services;

import com.uncodigo.algoritmos.dtos.SucursalVentasDto;

import java.util.Scanner;

public interface IVentaService {
    SucursalVentasDto obtenerVentasPorSucursal(Integer idSucursal);
}
