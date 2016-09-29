'use strict';

angular.module('myApp').factory('ProductoService', ['$http', '$q', function($http, $q){

    var REST_SERVICE_PRODUCTO_URI = 'http://localhost:8080/TiendaWebSite/producto/';
    var REST_SERVICE_CATEGORIA_URI = 'http://localhost:8080/TiendaWebSite/categoria/';

    var factory = {
        listarProductos: listarProductos,
        listarCategorias: listarCategorias,
		listarProductosPorCategoria: listarProductosPorCategoria
    };

    return factory;

    function listarProductos() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_PRODUCTO_URI)
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error al obtener el listado de productos');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
    function listarCategorias() {
		var deferred = $q.defer();
		$http.get(REST_SERVICE_CATEGORIA_URI)
			.then(
			function (response) {
				deferred.resolve(response.data);
			},
			function (errResponse) {
				console.error('Error al obtener el listado de categorias');
				deferred.reject(erResponse);
			}
		);
		return deferred.promise;
	}
	
	function listarProductosPorCategoria(id) {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_CATEGORIA_URI.concat(id.toString()))
            .then(
            function (response) {
                deferred.resolve(response.data);
            },
            function(errResponse){
                console.error('Error al obtener el listado de productos');
                deferred.reject(errResponse);
            }
        );
        return deferred.promise;
    }
    
}]);
