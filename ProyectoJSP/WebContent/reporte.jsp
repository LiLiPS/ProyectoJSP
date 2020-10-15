<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.ReporteDAO, modelos.Reporte, modelos.Usuario, javax.servlet.http.HttpSession, java.util.ArrayList, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/tablas2.css">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Reporte de materias</title>
</head>
<%
	Usuario us = (Usuario)session.getAttribute("usu");
	int horas = 0;

	if(us == null){
		out.print("<script>location.replace('login.jsp');</script>");
	} else{
	String sid = request.getParameter("id");
	int id = Integer.parseInt(sid);
	
	List<Reporte> reportes = ReporteDAO.getReportesById(id);
	request.setAttribute("reportes", reportes);
	
	for(Reporte reporte : reportes) {
		if(!(reporte.getLunes()).isEmpty()) {
			horas += 2;
		}
		
		if(!(reporte.getMartes()).isEmpty()) {
			horas += 2;
		}
		
		if(!(reporte.getMiercoles()).isEmpty()) {
			horas += 2;
		}
		
		if(!(reporte.getJueves()).isEmpty()) {
			horas += 2;
		}
		
		if(!(reporte.getViernes()).isEmpty()) {
			horas += 1;
		}
	}
}
%>
<body class="body">
	<header id="menu">
		<ul id="button">		
			<li><a href="menu.jsp">Regresar a menú</a></li>
			<li><a href="logout.jsp">Cerrar sesión</a></li>
		</ul>
	</header>
	<h1>Reporte de materias</h1>
	<h4 style="text-align:center">
		INSTITUTO TECNOLÓGICO DE LEÓN <br>
		DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN <br>
		PROGRAMACIÓN DE AGOSTO A DICIEMBRE 2020 <br>
	</h4>
	
	<div id="contenedor">
	<table class="datos">
		<tr>
			<td id="izq">Nombre del Maestro</td>
			<td>${reportes[0].getNombreMaestro()}</td>
		</tr>
		<tr>
			<td id="izq">Clave del Maestro</td>
			<td>${reportes[0].getClave_maestro()}</td>
		</tr>
		<tr>
			<td id="izq">Horas por impartir</td>
			<td>${reportes[0].getHoras()}</td>
		</tr>
		<tr>
			<td id="izq">Horas asignadas en Licenciatura</td>
			<td><%=horas%></td>
		</tr>
		<tr>
			<td id="izq">Horas asignadas en Posgrado</td>
			<td>0</td>
		</tr>
		<tr>
			<td id="izq">Total de horas asignadas</td>
			<td><%=horas%></td>
		</tr>
	</table>
	
	<br><br><br>
	
	<table class="reporte">
		<thead>
			<tr>
				<th>No.</th>
				<th>Clave del Grupo</th>
				<th>Clave de Materia</th>
				<th>Nombre de Materia</th>
				<th>Grupo</th>
				<th>Aula</th>
				<th>No. Alumnos</th>
				<th>Carrera</th>
				<th>Semestre</th>
				<th>Lunes</th>
				<th>Martes</th>
				<th>Miércoles</th>
				<th>Jueves</th>
				<th>Viernes</th>
				<th>Horas Teóricas</th>
				<th>Horas Prácticas</th>
				<th>Créditos</th>
			</tr>
		</thead>
		<c:forEach items="${reportes}" var="reporte" varStatus="contador">
		<tbody>
			<tr>
				<td>${contador.index+1}</td>
				<td>${reporte.getClave_grupo()}</td>
				<td>${reporte.getClave_materia()}</td>
				<td>${reporte.getMateria()}</td>
				<td>${reporte.getGrupo()}</td>
				<td>${reporte.getAula()}</td>
				<td>${reporte.getAlumnos()}</td>
				<td>${reporte.getAbreviaturaCarrera()}</td>
				<td>${reporte.getSemestre()}</td>
				<td>${reporte.getLunes()}</td>
				<td>${reporte.getMartes()}</td>
				<td>${reporte.getMiercoles()}</td>
				<td>${reporte.getJueves()}</td>
				<td>${reporte.getViernes()}</td>
				<td>${reporte.getHoras_t()}</td>
				<td>${reporte.getHoras_p()}</td>
				<td>${reporte.getCreditos()}</td>
			</tr>
		</tbody>
		</c:forEach>
	</table>	
	</div>
</body>
</html>