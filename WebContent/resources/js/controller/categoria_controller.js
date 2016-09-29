'use strict';

angular.module('myApp').controller('CategoriaController', ['$scope', 'CategoriaService', function($scope, CategoriaService) {
	
	var self = this;
	self.categoria={id_categoria:null,descripcion:''};
	self.categorias=[];
	self.producto={id_producto:null,descripcion:'',categoria:'',marca:'',precio:null,stock:null};
    self.productos=[];
	
	listarCategorias();
	
	function listarCategorias() {
		CategoriaService.listarCategorias()
			.then(
			function (d) {
				self.categorias = d;
			},
			function (errResponse) {
				console.error('Error al obtener el listado de categorias');
			}
		);
	}
	
	function listarProductosPorCategoria(id){
        ProductoService.listarProductosPorCategoria(id)
            .then(
            function(d) {
                self.productos = d;
            },
            function(errResponse){
                console.error('Error al obtener el listado de productos');
            }
        );
    }
	
}]);