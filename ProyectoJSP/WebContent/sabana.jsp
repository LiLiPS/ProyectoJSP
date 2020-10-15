<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.SabanaDAO, modelos.Sabana, modelos.Usuario, javax.servlet.http.HttpSession, java.util.ArrayList, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/tablas2.css">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Sabana de materias y horarios</title>
</head>
<%
	Usuario us = (Usuario)session.getAttribute("usu");
	int horas = 0;

	if(us == null){
		out.print("<script>location.replace('login.jsp');</script>");
	} else{
		String rol = session.getAttribute("rol").toString();
		
		if(rol.equals("maestro")){
			out.print("<script>location.replace('menu.jsp');</script>");
		}
	
	List<Sabana> sabana = SabanaDAO.getSabana();
	request.setAttribute("sabana", sabana);
}
%>
<body class="body">
	<header id="menu">
		<ul id="button">
			<li><a href="menu.jsp">Regresar a menú</a></li>
			<li><a href="logout.jsp">Cerrar sesión</a></li>
	</ul>
	</header>
	<h1>Sabana de materias y horarios</h1>
	<div id="contenedor">
	<table class="reporte">
		<thead>
			<tr>
				<th>Clave horario</th>
				<th>Clave de materia</th>
				<th>Clave de carrera</th>
				<th>Nombre de Materia</th>
				<th>Carrera</th>
				<th>Maestro</th>
				<th>Periodo</th>
				<th>Turno</th>
				<th>Grupo</th>
				<th>No. Alumnos</th>
				<th>Semestre</th>
				<th>Créditos</th>
				<th>Lunes</th>
				<th>Martes</th>
				<th>Miércoles</th>
				<th>Jueves</th>
				<th>Viernes</th>
				<th>Aula</th>			
			</tr>
		</thead>
		<c:forEach items="${sabana}" var="s">
		<tbody>
			<tr>
				<td>${s.getClave_horario()}</td>
				<td>${s.getClave_materia()}</td>
				<td>${s.getClave_carrera()}</td>
				<td>${s.getMateria()}</td>
				<td>${s.getCarrera()}</td>
				<td>${s.getNombreMaestro()}</td>
				<td>${s.getPeriodo()}</td>
				<td>${s.getTurno()}</td>
				<td>${s.getGrupo()}</td>
				<td>${s.getAlumnos()}</td>
				<td>${s.getSemestre()}</td>
				<td>${s.getCreditos()}</td>
				<td>${s.getLunes()}</td>
				<td>${s.getMartes()}</td>
				<td>${s.getMiercoles()}</td>
				<td>${s.getJueves()}</td>
				<td>${s.getViernes()}</td>
				<td>${s.getAula()}</td>				
			</tr>
		</tbody>
		</c:forEach>
	</table>	
	</div>
</body>
</html>