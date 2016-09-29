package com.caleb.tienda.website.service;

import java.util.List;

import com.caleb.entity.Categoria;
import com.caleb.entity.Marca;
import com.caleb.entity.Producto;

public interface ProductoService {

	public Producto buscarProducto(int id_producto);
	public List<Producto> listarProductos();
	public List<Producto> listarProductos(Categoria categoria);
	public List<Producto> listarProductos(Marca marca);
	
}
