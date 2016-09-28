package com.caleb.tienda.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.caleb.entity.Producto;
import com.caleb.tienda.website.service.ProductoService;

@Controller
public class ProductoController {

	private ProductoService productoService;

	@Autowired(required = true)
	@Qualifier(value = "productoService")
	public void setProductoService(ProductoService productoService) {
		this.productoService = productoService;
	}

	@RequestMapping(value = "/producto/", method = RequestMethod.GET)
	public ResponseEntity<List<Producto>> listarProductos() {
		List<Producto> productos = productoService.listarProductos();
		if (productos.isEmpty()) {
			return new ResponseEntity<List<Producto>>(HttpStatus.NO_CONTENT);// You many decide to return HttpStatus.NOT_FOUND
		}
		return new ResponseEntity<List<Producto>>(productos, HttpStatus.OK);
	}

}
