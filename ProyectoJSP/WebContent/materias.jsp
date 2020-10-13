<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO, modelos.Materia, javax.servlet.http.HttpSession, java.util.ArrayList, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%
 
	String estadoPagina = "nada";
	String sid = request.getParameter("claveM");
	String clave = sid;
	List<Materia> list = new ArrayList<Materia>();
	
	try { // Obtener el estado (status-->sts)
		estadoPagina = request.getParameter("sts");
		if (estadoPagina == null) {
			estadoPagina = "nada";
			list = MateriaDAO.getMaterias();
		}
		if (estadoPagina.equals("buscar")) {
			if (clave == "")
				list = MateriaDAO.getMaterias();
			else
				list = MateriaDAO.getMateriasbyClave(clave);
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
<title>Lista de materias</title>
</head>
<body>
	<h2>Materias</h2>
	
	<a href="crearMateria.jsp">Agregar nueva materia</a>
	<form action='materias.jsp' method='GET'>
		<h4>Buscar una materia</h4>
		<input type='text' placeholder='Clave de materia' name='claveM'>
		<input type='submit' name='buscar' value='Buscar'>
		<input type='hidden' name='sts' value='buscar'>
	</form>
	<br>
	
	<table border=1>
	<tr class="cabecera">
	<td>No.</td>
	<td>Clave materia</td>
	<td>Nombre</td>
	<td>Abreviatura Carrera</td>
	<td>Carrera</td>
	<td>Semestre</td>
	<td>Horas teóricas</td>
	<td>Horas prácticas</td>
	<td>Créditos</td>
	<td>Editar</td>
	<td>Borrar</td>
	</tr>
	<c:if test="list.isEmpty()">
		<tr><th colspan=11>No se encontraron materias</th></tr>
	</c:if>
	<c:forEach items="${list}" var="m">
			<tr>
				<td>${m.getId_materia()}</td>
				<td>${m.getClave_materia()}</td>
				<td>${m.getNombre()}</td>
				<td>${m.getAbreviaturaCarrera()}</td>
				<td>${m.getCarrera()}</td>
				<td>${m.getSemestre()}</td>
				<td>${m.getHoras_t()}</td>
				<td>${m.getHoras_p()}</td>
				<td>${m.getCreditos()}</td>				
				<td><a href="editarMateria.jsp?id=${m.getId_materia()}">Editar</a></td>
				<td><a href="eliminarMateria.jsp?id=${m.getId_materia()}">Borrar</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>