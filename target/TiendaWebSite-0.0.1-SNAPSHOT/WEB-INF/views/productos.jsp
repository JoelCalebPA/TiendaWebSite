<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
.generic-container {
	width: 80%;
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

	<div class="generic-container"
		ng-controller="ProductoController as ctrl">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Lista de Productos </span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID.</th>
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

</body>

</html>