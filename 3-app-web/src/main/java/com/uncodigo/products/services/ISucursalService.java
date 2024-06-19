package com.uncodigo.products.services;

import com.uncodigo.products.models.Sucursal;

import java.util.Collection;

public interface ISucursalService {
    Collection<Sucursal> findAll();
}
