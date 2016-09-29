'use strict';

angular.module('myApp').factory('CategoriaService', ['$http', '$q', function($http, $q) {

	var REST_SERVICE_URI = 'http://localhost:8080/TiendaWebSite/categoria/';
	
	var factory = {
			listarCategorias: listarCategorias,
			listarProductosPorCategoria: listarProductosPorCategoria
	};
	
	return factory;
	
	function listarCategorias() {
		var deferred = $q.defer();
		$http.get(REST_SERVICE_URI)
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
        $http.get(REST_SERVICE_URI.concat(id))
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
