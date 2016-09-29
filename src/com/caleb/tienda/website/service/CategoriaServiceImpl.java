package com.caleb.tienda.website.service;

import java.util.List;

import com.caleb.businesslogic.CategoriaBLogic;
import com.caleb.entity.Categoria;

public class CategoriaServiceImpl implements CategoriaService {

	private CategoriaBLogic categoriaDAO;
	
	public void setCategoriaDAO(CategoriaBLogic categoriaDAO) {
		this.categoriaDAO = categoriaDAO;
	}

	@Override
	public List<Categoria> listarCategorias() {
		return categoriaDAO.listarCategoria();
	}

}
