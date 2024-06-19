package com.uncodigo.products.services.impl;

import com.uncodigo.products.models.Sucursal;
import com.uncodigo.products.repositories.ISucursalRepository;
import com.uncodigo.products.services.ISucursalService;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class SucursalServiceImpl implements ISucursalService {

    private final ISucursalRepository sucursalRepository;

    public SucursalServiceImpl(ISucursalRepository sucursalRepository) {
        this.sucursalRepository = sucursalRepository;
    }

    @Override
    public Collection<Sucursal> findAll() {
        return sucursalRepository.findAllByOrderByNombreAsc();
    }
}
