package com.uncodigo.algoritmos.controllers;

import com.uncodigo.algoritmos.dtos.SucursalStockDto;
import com.uncodigo.algoritmos.dtos.SucursalVentasDto;
import com.uncodigo.algoritmos.services.IStockService;
import com.uncodigo.algoritmos.services.IVentaService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Scanner;

@Component
public class MainController implements CommandLineRunner {

    private final IVentaService ventaService;
    private final IStockService stockService;

    public MainController(IVentaService ventaService, IStockService stockService) {
        this.ventaService = ventaService;
        this.stockService = stockService;
    }

    @Override
    public void run(String... args) throws Exception {
        Scanner scanner = new Scanner(System.in);

        boolean running = true;

        do {
            System.out.println("Seleccione una opción: ");
            System.out.println("1. Consultar ventas por sucursal");
            System.out.println("2. Consultar stock por sucursal");
            System.out.println("3. Salir");
            System.out.println();
            System.out.println("Ingrese el número de la opción: ");
            int choice = scanner.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Ingrese el id de la sucursal: ");
                    Integer idSucursal = scanner.nextInt();
                    SucursalVentasDto sucursalVentasDto = ventaService.obtenerVentasPorSucursal(idSucursal);
                    System.out.println();
                    if (sucursalVentasDto != null && sucursalVentasDto.getCantidadVentas() <= 10) {
                        System.out.println("[Alerta] - La cantidad de ventas en la sucursal " + sucursalVentasDto.getNombreSucursal() + " es muy baja (" + sucursalVentasDto.getCantidadVentas() +" ventas).");
                    } else {
                        System.out.println("[Info] - No se encontraron ventas para la sucursal con id: " + idSucursal);
                    }
                    System.out.println();
                    break;
                case 2:
                    System.out.println("Ingrese el id del producto a consultar: ");
                    Integer productoId = scanner.nextInt();
                    List<SucursalStockDto> sucursalStockDto = stockService.obtenerTop3SucursalesConMayorStock(productoId);
                    System.out.println();
                    System.out.println("El top 3 de las sucursales con mayor stock para el producto con id: " + productoId + " son: ");
                    System.out.println();
                    sucursalStockDto.forEach(sucursal -> {
                        System.out.println("- Sucursal: " + sucursal.getNombreSucursal() + " - Stock: " + sucursal.getCantidadStock());
                    });
                    System.out.println();
                    break;

                case 3:
                    System.out.println("Gracias por usar el sistema. Hasta luego!");
                    running = false;
                    break;
            }

        } while (running);
    }
}
