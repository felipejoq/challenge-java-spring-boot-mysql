package com.uncodigo.products.services.impl;

import com.uncodigo.products.models.Categoria;
import com.uncodigo.products.repositories.ICategoriaRepository;
import com.uncodigo.products.services.ICategoriaService;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class CategoriaServiceImpl implements ICategoriaService {

    private final ICategoriaRepository categoriaRepository;

    public CategoriaServiceImpl(ICategoriaRepository categoriaRepository) {
        this.categoriaRepository = categoriaRepository;
    }

    @Override
    public Collection<Categoria> findAll() {
        return categoriaRepository.findAll();
    }
}
