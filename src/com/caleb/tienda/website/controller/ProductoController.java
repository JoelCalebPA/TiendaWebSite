package com.caleb.tienda.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.caleb.entity.Producto;
import com.caleb.tienda.website.service.ProductoService;

@Controller
public class ProductoController {

	private ProductoService productoService;

	@Autowired(required = true)
	@Qualifier(value="productoService")
	public void setProductoService(ProductoService productoService) {
		this.productoService = productoService;
	}
	
	@RequestMapping(value = "/productos", method = RequestMethod.GET)
	public String listarProductos(Model model) {
		model.addAttribute("producto", new Producto());
		model.addAttribute("productos", productoService.listarProductos());
		return "productos";
	}
	
}
