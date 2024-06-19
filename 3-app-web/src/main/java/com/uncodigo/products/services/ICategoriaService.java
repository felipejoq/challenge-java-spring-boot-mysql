package com.uncodigo.products.services;

import com.uncodigo.products.models.Categoria;

import java.util.Collection;

public interface ICategoriaService {
    Collection<Categoria> findAll();
}
