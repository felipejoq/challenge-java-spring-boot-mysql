package com.uncodigo.products.services;

import com.uncodigo.products.models.Producto;

import java.util.Collection;

public interface IProductoService {
    Collection<Producto> findAll();
}
