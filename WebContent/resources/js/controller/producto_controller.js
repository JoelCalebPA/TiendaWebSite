'use strict';

angular.module('myApp').controller('ProductoController', ['$scope', 'ProductoService', function($scope, ProductoService) {
    
	var self = this;
    self.producto={id_producto:null,descripcion:'',categoria:'',marca:'',precio:null,stock:null};
    self.productos=[];
    self.categoria={id_categoria:null,descripcion:''};
	self.categorias=[];

	self.listar = listar;
	
	listarCategorias();
    listarProductos();
    
    function listarProductos(){
        ProductoService.listarProductos()
            .then(
            function(d) {
                self.productos = d;
            },
            function(errResponse){
                console.error('Error al obtener el listado de productos');
            }
        );
    }
    
    function listarCategorias() {
    	ProductoService.listarCategorias()
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
	
	function listar(id) {
		listarProductosPorCategoria(id);
	}
    
}]);
