<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO, modelos.Materia, modelos.Usuario" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="estilos/estilos.css">
<title>Editar materia</title>
</head>
<body class="body">
<% 
	Usuario us = (Usuario)session.getAttribute("usu");
	String rol;
	int horas = 0;

	if(us == null){
		out.print("<script>location.replace('login.jsp');</script>");
	} else{
		rol = session.getAttribute("rol").toString();
		if(rol.equals("maestro")){
			out.print("<script>location.replace('menu.jsp');</script>");
		}else{
			String sid = request.getParameter("id");	
			Materia m = MateriaDAO.getMateriabyID(Integer.parseInt(sid));
			request.setAttribute("materia", m);
		}		
	}
%>
<header id="menu">
	<ul id="button">
		<li><a href="menu.jsp">Regresar a menú</a></li>
		<li><a href="logout.jsp">Cerrar sesión</a></li>
	</ul>
</header>
<h1 style="text-align: center">Editar una materia</h1>
<div id="contenedor">
	<form action="editar.jsp" method="post">
		<div id="formulario">
			<table>
				<tr>
					<td><input type="hidden" name="id_materia" id="id_materia" value="${materia.getId_materia()}"/></td>
				</tr>
				<tr>
					<td><label for="clave_materia">Clave materia: </label></td>
					<td><input type="text" name="clave_materia" id="clave_materia" value="${materia.getClave_materia()}"/></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre" value="${materia.getNombre()}"/></td>
				</tr>
				<tr>
					<td><label for="abreviaturaCarrera">Abreviatura de Carrera: </label></td>
					<td><input type="text" name="abreviaturaCarrera" id="abreviaturaCarrera" value="${materia.getAbreviaturaCarrera()}"/></td>
				</tr>
				<tr>
					<td><label for="carrera">Carrera: </label></td>
					<td><input type="text" name="carrera" id="carrera" value="${materia.getCarrera()}"/></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre" class="number" value="${materia.getSemestre()}"/></td>
				</tr>
				<tr>
					<td><label for="horas_t">Horas teóricas: </label></td>
					<td><input type="number" name="horas_t" id="horas_t" class="number" value="${materia.getHoras_t()}"/></td>
				</tr>
				<tr>
					<td><label for="horas_p">Horas prácticas: </label></td>
					<td><input type="number" name="horas_p" id="horas_p" class="number" value="${materia.getHoras_p()}"/></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos" class="number" value="${materia.getCreditos()}"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="boton" id="boton" value="Editar"/></td>
				</tr>
			</table>
		</div>
	</form>
</div>
</body>
</html>