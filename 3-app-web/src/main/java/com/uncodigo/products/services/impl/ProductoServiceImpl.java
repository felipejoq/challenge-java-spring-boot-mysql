package com.uncodigo.products.services.impl;

import com.uncodigo.products.models.Producto;
import com.uncodigo.products.repositories.IProductoRepository;
import com.uncodigo.products.services.IProductoService;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class ProductoServiceImpl implements IProductoService {

    private final IProductoRepository productoRepository;

    public ProductoServiceImpl(IProductoRepository productoRepository) {
        this.productoRepository = productoRepository;
    }

    @Override
    public Collection<Producto> findAll() {
        return productoRepository.findAllByOrderByNombreAsc();
    }
}
