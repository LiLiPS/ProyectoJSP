<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="DAO.LoginDAO, modelos.Usuario"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="estilos/estilos.css">
<title>Administración de materias</title>
<style type="text/css">
	.body{	
    background: url(https://lobos.milaulas.com/pluginfile.php/1/theme_eguru/logo/1598504862/Logo%20TecNM%20Horizontal%20gris.png) no-repeat;
    min-height: 100%;
    background-size: cover;
}
</style>
</head>
<%
	Usuario us = (Usuario)session.getAttribute("usu");
	String usuario="", titulo="", rol="";
	int id=0;
	
	if(us == null){
		out.print("<script>location.replace('login.jsp');</script>");
	} else{
	usuario = (String)session.getAttribute("usuario");
	titulo = (String)session.getAttribute("titulo");
	rol = (String)session.getAttribute("rol");
	id = (int)session.getAttribute("id_usuario");
}%>
<body class="body">
<header id="menu">
<ul id="button">
	<c:if test="${rol == 'jefe'}">
	<li><a href="materias.jsp">Lista de materias</a></li>
	<li><a href="maestros.jsp">Lista de maestros</a></li>
	<li><a href="sabana.jsp">Sábana</a></li>
	<li><a href="logout.jsp">Cerrar sesión</a></li>
	</c:if>
	<c:if test="${rol == 'maestro' }">
	<li><a href="reporte.jsp?id=<%=id%>">Reporte de materias</a></li>
	<li><a href="logout.jsp">Cerrar sesión</a></li>
	</c:if>
</ul>
</header>

<% out.print("<h3>Bienvenido "+titulo +" "+ usuario+" </h3>"); %>


</body>
</html>
