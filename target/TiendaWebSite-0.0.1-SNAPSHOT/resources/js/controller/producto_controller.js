'use strict';

angular.module('myApp').controller('ProductoController', ['$scope', 'ProductoService', function($scope, ProductoService) {
    var self = this;
    self.producto={id_producto:null,descripcion:'',categoria:'',marca:'',precio:null,stock:null};
    self.productos=[];

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
}]);
