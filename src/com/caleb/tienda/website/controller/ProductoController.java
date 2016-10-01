package com.caleb.tienda.website.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.caleb.entity.Marca;
import com.caleb.entity.Producto;
import com.caleb.tienda.website.service.ProductoService;

@RestController
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
	
	@RequestMapping(value = "/producto/{id}", method = RequestMethod.GET)
	public ResponseEntity<Producto> buscarProductos(@PathVariable("id")int id_producto) {
		Producto producto = productoService.buscarProducto(id_producto);
		if (producto.equals(null)) {
			return new ResponseEntity<Producto>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Producto>(producto, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/marca/{id}", method = RequestMethod.GET)
	public ResponseEntity<List<Producto>> listarProductosPorMarca(@PathVariable("id")int id_marca) {
		Marca marca = new Marca();
		marca.setId_marca(id_marca);
		List<Producto> productos = productoService.listarProductos(marca);
		if (productos.isEmpty()) {
			return new ResponseEntity<List<Producto>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Producto>>(productos, HttpStatus.OK);
	}

}
