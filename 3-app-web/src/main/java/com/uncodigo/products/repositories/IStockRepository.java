package com.uncodigo.products.repositories;

import com.uncodigo.products.dtos.SucursalProductoStockDto;
import com.uncodigo.products.models.Stock;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IStockRepository extends JpaRepository<Stock, Long> {
    @Query("SELECT new com.uncodigo.products.dtos.SucursalProductoStockDto(s.sucursal.id, s.sucursal.nombre, p.id, p.nombre, s.cantidad) " +
            "FROM Stock s " +
            "JOIN s.producto p " +
            "JOIN s.sucursal suc " +
            "WHERE s.sucursal.id = :sucursalId AND s.producto.id = :productoId")
    List<SucursalProductoStockDto> findSucursalProductoStockBySucursalAndProducto(
            @Param("sucursalId") Integer sucursalId,
            @Param("productoId") Integer productoId
    );
}