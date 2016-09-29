'use strict';

angular.module('myApp').factory('ProductoService', ['$http', '$q', function($http, $q){

    var REST_SERVICE_URI = 'http://localhost:8080/TiendaWebSite/producto/';

    var factory = {
        listarProductos: listarProductos
    };

    return factory;

    function listarProductos() {
        var deferred = $q.defer();
        $http.get(REST_SERVICE_URI)
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
