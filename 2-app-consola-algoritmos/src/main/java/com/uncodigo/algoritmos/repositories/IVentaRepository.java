package com.uncodigo.algoritmos.repositories;

import com.uncodigo.algoritmos.dtos.SucursalVentasDto;
import com.uncodigo.algoritmos.models.Venta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IVentaRepository extends JpaRepository<Venta, Integer> {
    @Query("SELECT new com.uncodigo.algoritmos.dtos.SucursalVentasDto(v.sucursal.nombre, COUNT(v)) " +
            "FROM Venta v WHERE v.sucursal.id = :sucursalId GROUP BY v.sucursal.nombre")
    SucursalVentasDto findSucursalNombreYCantidadVentas(@Param("sucursalId") Integer sucursalId);
}
