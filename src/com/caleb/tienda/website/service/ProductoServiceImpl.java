package com.caleb.tienda.website.service;

import java.util.List;

import com.caleb.businesslogic.ProductoBLogic;
import com.caleb.entity.Producto;

public class ProductoServiceImpl implements ProductoService {

	private ProductoBLogic productoDAO;

	public void setProductoDAO(ProductoBLogic productoDAO) {
		this.productoDAO = productoDAO;
	}

	@Override
	public List<Producto> listarProductos() {
		return productoDAO.Listar();
	}
	
	
}
