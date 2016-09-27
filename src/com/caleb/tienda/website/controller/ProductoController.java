package com.caleb.tienda.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.caleb.businesslogic.ProductoBLogic;

@Controller
public class ProductoController {

	private ProductoBLogic bLogic = new ProductoBLogic();
	
	@RequestMapping("/welcome")
	public ModelAndView getProductos() {
		return new ModelAndView("welcome", "productos", bLogic.Listar());
	}
	
}
