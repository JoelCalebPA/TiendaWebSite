<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <spring:url value="/resources/crunchify.css" var="crunchifyCSS" /> --%>
<%-- <spring:url value="/resources/crunchify.js" var="crunchifyJS" /> --%>
<%-- <link href="${crunchifyCSS}" rel="stylesheet" /> --%>
<%-- <script src="${crunchifyJS}"></script> --%>
<!-- <link rel="stylesheet" -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.generic-container-categorias {
	float: left;
	width: 200px;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	padding: 20px;
	background-color: #EAE7E7;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-shadow: 0 0 30px black;
	width: 200px;
}

.generic-container {
	float: left;
	width: 70%;
	margin-left: 20px;
	margin-top: 20px;
	margin-bottom: 20px;
	padding: 20px;
	background-color: #EAE7E7;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-shadow: 0 0 30px black;
}
</style>
</head>
<body ng-app="myApp" class="ng-cloak">

	<!-- Modificar este Navbar -->

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Tienda</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Inico <span class="sr-only">(current)</span></a></li>
				<li><a href="#">Nosotros</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Marcas <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Marca 1</a></li>
						<li><a href="#">Marca 2</a></li>
						<li><a href="#">Marca 3</a></li>
					</ul></li>
			</ul>
			<form class="navbar-form navbar-left">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Buscar producto">
				</div>
				<button type="submit" class="btn btn-default">Buscar</button>
			</form>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">Log in</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Idioma <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Español</a></li>
						<li><a href="#">Ingles</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

	<!-- Modificar este Navbar -->



	<div ng-controller="ProductoController as ctrl">
		<div class="generic-container-categorias">
			<ul class="nav nav-pills nav-stacked">
				<li role="presentation" ng-repeat="c in ctrl.categorias"><a
					href="#" type="button" ng-click="ctrl.listar(c.id_categoria)">
						<span ng-bind="c.descripcion"></span>
				</a></li>
			</ul>
		</div>


		<div class="generic-container">
			<div class="panel panel-default">
				<!-- Default panel contents -->
				<div class="panel-heading">
					<span class="lead">Lista de Productos </span>
				</div>
				<div class="tablecontainer">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>Descripcion</th>
								<th>Categoria</th>
								<th>Marca</th>
								<th>Precio</th>
								<th>Stock</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="p in ctrl.productos">
								<td><span ng-bind="p.id_producto"></span></td>
								<td><span ng-bind="p.descripcion"></span></td>
								<td><span ng-bind="p.categoria.descripcion"></span></td>
								<td><span ng-bind="p.marca.descripcion"></span></td>
								<td><span ng-bind="p.precio"></span></td>
								<td><span ng-bind="p.stock"></span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<script
			src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
		<script src="<c:url value='/resources/js/app.js' />"></script>
		<script
			src="<c:url value='/resources/js/service/producto_service.js' />"></script>
		<script
			src="<c:url value='/resources/js/controller/producto_controller.js' />"></script>
	</div>

</body>

</html>