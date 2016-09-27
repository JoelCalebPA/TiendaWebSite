<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <spring:url value="/resources/crunchify.css" var="crunchifyCSS" /> --%>
<%-- <spring:url value="/resources/crunchify.js" var="crunchifyJS" /> --%>
<%-- <link href="${crunchifyCSS}" rel="stylesheet" /> --%>
<%-- <script src="${crunchifyJS}"></script> --%>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" -->
<!-- 	crossorigin="anonymous"> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- 	<h1>Categorias</h1> -->
	<!-- 	<div style="width: 200px;"> -->
	<!-- 		<ul class="nav nav-pills nav-stacked"> -->
	<%-- 			<c:forEach items="${ categorias }" var="c"> --%>
	<%-- 				<li role="presentation" class="active"><a href="#"><c:out --%>
	<%-- 							value="${c.getDescripcion()}" /></a></li> --%>
	<%-- 			</c:forEach> --%>
	<!-- 		</ul> -->
	<!-- 	</div> -->
	<h1>Productos</h1>
	<div>
		<ul>
			<c:forEach items="${ productos }" var="producto">
				<li>${ producto.descripcion }</li>
			</c:forEach>
		</ul>
	</div>
</body>

</html>