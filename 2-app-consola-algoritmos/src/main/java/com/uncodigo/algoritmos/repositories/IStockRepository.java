package com.uncodigo.algoritmos.repositories;

import com.uncodigo.algoritmos.dtos.SucursalStockDto;
import com.uncodigo.algoritmos.models.Stock;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IStockRepository extends JpaRepository<Stock, Long>{

    @Query("SELECT new com.uncodigo.algoritmos.dtos.SucursalStockDto(s.sucursal.nombre, SUM(s.cantidad)) " +
            "FROM Stock s " +
            "JOIN s.sucursal suc " +
            "WHERE s.producto.id = :productoId " +
            "GROUP BY s.sucursal.nombre " +
            "ORDER BY SUM(s.cantidad) DESC")
    List<SucursalStockDto> findTop3SucursalesConMayorStock(@Param("productoId") Integer productoId, Pageable pageable);
}