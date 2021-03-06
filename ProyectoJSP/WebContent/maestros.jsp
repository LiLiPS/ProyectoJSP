<!-- Parada S�nchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.UsuarioDAO, modelos.Usuario, javax.servlet.http.HttpSession, java.util.ArrayList, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<% 
	String estadoPagina = "nada";
	String sid = request.getParameter("claveM");
	String clave = sid;
	List<Usuario> list = new ArrayList<Usuario>();
	
	try { // Obtener el estado (status-->sts)
		estadoPagina = request.getParameter("sts");
		if (estadoPagina == null) {
			estadoPagina = "nada";
			list = UsuarioDAO.getUsuarios();
		}
		if (estadoPagina.equals("buscar")) {
			if (clave == "")
				list = UsuarioDAO.getUsuarios();
			else
				list = UsuarioDAO.getUsuariosbyClave(clave);
		}
	} catch (Exception exx) {
		exx.printStackTrace();
	}
	
	request.setAttribute("list",list);
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/tablas.css">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Lista de materias</title>
</head>
<body class="body">
	<%
	String usuario;
	String rol;
	
	if(session.getAttribute("usuario")!=null && session.getAttribute("rol")!=null){
		usuario = session.getAttribute("usuario").toString(); 
		rol = session.getAttribute("rol").toString();
		
		if(rol.equals("maestro")){
			out.print("<script>location.replace('menu.jsp');</script>");
		}
		
	}else{
		out.print("<script>location.replace('login.jsp');</script>");
	}
	%>
	<header id="menu">
		<ul id="button">
			<li><a href="menu.jsp">Regresar a men�</a></li>
			<li><a href="logout.jsp">Cerrar sesi�n</a></li>
	</ul>
	</header>
	<h2>Maestros</h2>
	
	<div id="contenedor">
	<form action='maestros.jsp' method='GET'>
		<h4>Buscar un maestro</h4>
		<input type='text' placeholder='Clave de maestro' name='claveM'>
		<input type='submit' name='buscar' value='Buscar'>
		<input type='hidden' name='sts' value='buscar'>
	</form>
	<br>
	
	<table border=1>
	<tr class="cabecera">
	<th>No.</th>
	<th>Clave maestro</th>
	<th>T�tulo</th>
	<th>Nombre</th>
	<th>Apellido paterno</th>
	<th>Apellido materno</th>
	<th>Reporte de materias</th>
	</tr>
	<c:if test="list.isEmpty()">
		<tr><th colspan=11>No se encontraron maestros</th></tr>
	</c:if>
	<c:forEach items="${list}" var="us">
			<tr>
				<td>${us.getId_usuario()}</td>
				<td>${us.getClave_usuario()}</td>
				<td>${us.getTitulo()}</td>
				<td>${us.getNombre()}</td>
				<td>${us.getApellido_paterno()}</td>
				<td>${us.getApellido_materno()}</td>			
				<td><a href="reporte.jsp?id=${us.getId_usuario()}">Reporte</a></td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>