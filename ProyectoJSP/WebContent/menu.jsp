<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<%
	String usuario = (String)session.getAttribute("usuario");
	String titulo = (String)session.getAttribute("titulo");
	String rol = (String)session.getAttribute("rol");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administración de materias</title>
</head>
<body>
<% out.print("<h3>Bienvenido "+titulo +" "+ usuario+" </h3>"); %>

<h4>Menú</h4>

<ul>
	<c:if test="${rol == 'jefe'}">
	<li><a href="materias.jsp">Lista de materias</a></li>
	<li><a href="maestros.jsp">Lista de maestros</a></li>
	<li><a href="sabana.jsp">Sábana</a></li>
	<li><a href="logout.jsp">Cerrar sesión</a></li>
	</c:if>
	<c:if test="${rol == 'maestro' }">
	<li><a href="reporte.jsp">Reporte de materias</a></li>
	<li><a href="logout.jsp">Cerrar sesión</a></li>
	</c:if>
</ul>
</body>
</html>