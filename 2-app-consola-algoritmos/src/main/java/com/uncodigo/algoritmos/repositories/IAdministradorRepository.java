package com.uncodigo.algoritmos.repositories;

import com.uncodigo.algoritmos.models.Administrador;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IAdministradorRepository extends JpaRepository<Administrador, Integer> {
}
