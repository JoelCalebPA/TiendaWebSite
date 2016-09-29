package com.caleb.tienda.website.service;

import java.util.List;

import com.caleb.businesslogic.ProductoBLogic;
import com.caleb.entity.Categoria;
import com.caleb.entity.Marca;
import com.caleb.entity.Producto;

public class ProductoServiceImpl implements ProductoService {

	private ProductoBLogic productoDAO;

	public void setProductoDAO(ProductoBLogic productoDAO) {
		this.productoDAO = productoDAO;
	}

	@Override
	public Producto buscarProducto(int id_producto) {
		return productoDAO.buscarProducto(id_producto);
	}
	
	@Override
	public List<Producto> listarProductos() {
		return productoDAO.Listar();
	}

	@Override
	public List<Producto> listarProductos(Categoria categoria) {
		return productoDAO.Listar(categoria);
	}

	@Override
	public List<Producto> listarProductos(Marca marca) {
		return productoDAO.Listar(marca);
	}
	
	
}
