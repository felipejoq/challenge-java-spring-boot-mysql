package com.uncodigo.products.controllers;

import com.uncodigo.products.dtos.SucursalProductoStockDto;
import com.uncodigo.products.services.ICategoriaService;
import com.uncodigo.products.services.IProductoService;
import com.uncodigo.products.services.IStockService;
import com.uncodigo.products.services.ISucursalService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController {

    private final ISucursalService sucursalService;
    private final IProductoService productoService;
    private final IStockService stockService;

    public IndexController(ISucursalService sucursalService, IProductoService productoService, IStockService stockService) {
        this.sucursalService = sucursalService;
        this.productoService = productoService;
        this.stockService = stockService;
    }

    @RequestMapping
    public ModelAndView index(
            @RequestParam(required = false) Integer sucursalId,
            @RequestParam(required = false) Integer productoId
    ) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("sucursales", sucursalService.findAll());
        modelAndView.addObject("productos", productoService.findAll());

        if (sucursalId != null && productoId != null) {
            modelAndView.addObject("sucursalId", sucursalId);
            modelAndView.addObject("productoId", productoId);
            List<SucursalProductoStockDto> stock = stockService.obtenerSucursalProductoStock(sucursalId, productoId);
            modelAndView.addObject("stocks", stock);
        }

        modelAndView.setViewName("index");
        return modelAndView;
    }

    @PostMapping("/filtrar")
    public String filtrar(
            @RequestParam Integer sucursalId,
            @RequestParam Integer productoId,
            RedirectAttributes redirectAttributes
    ) {

        List<SucursalProductoStockDto> stock = stockService.obtenerSucursalProductoStock(sucursalId, productoId);
        redirectAttributes.addFlashAttribute("stocks", stock);

        return "redirect:/?sucursalId=" + sucursalId + "&productoId=" + productoId;
    }
}
