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

import com.caleb.entity.Categoria;
import com.caleb.entity.Producto;
import com.caleb.tienda.website.service.CategoriaService;
import com.caleb.tienda.website.service.ProductoService;

@RestController
public class CategoriaController {

	private CategoriaService categoriaService;
	private ProductoService productoService;

	@Autowired(required = true)
	@Qualifier(value = "productoService")
	public void setProductoService(ProductoService productoService) {
		this.productoService = productoService;
	}

	@Autowired(required = true)
	@Qualifier(value = "categoriaService")
	public void setCategoriaService(CategoriaService categoriaService) {
		this.categoriaService = categoriaService;
	}
	
	@RequestMapping(value = "/categoria/", method = RequestMethod.GET)
	public ResponseEntity<List<Categoria>> listarCategoria() {
		List<Categoria> categorias = categoriaService.listarCategorias();
		if (categorias.isEmpty()) {
			return new ResponseEntity<List<Categoria>>(HttpStatus.NO_CONTENT);// You many decide to return HttpStatus.NOT_FOUND
		}
		return new ResponseEntity<List<Categoria>>(categorias, HttpStatus.OK);
		
	}
	
	@RequestMapping(value = "/categoria/{id}", method = RequestMethod.GET)
	public ResponseEntity<List<Producto>> listarProductosPorCategoria(@PathVariable("id") int id_categoria) {
		Categoria categoria = new Categoria();
		categoria.setId_categoria(id_categoria);
		List<Producto> productos = productoService.listarProductos(categoria);
		if (productos.isEmpty()) {
			return new ResponseEntity<List<Producto>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Producto>>(productos, HttpStatus.OK);
	}
	
}
