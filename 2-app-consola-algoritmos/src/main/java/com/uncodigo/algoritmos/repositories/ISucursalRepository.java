package com.uncodigo.algoritmos.repositories;

import com.uncodigo.algoritmos.models.Sucursal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ISucursalRepository extends JpaRepository<Sucursal, Integer> {
}
