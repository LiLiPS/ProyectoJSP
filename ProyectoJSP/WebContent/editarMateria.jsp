<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO, modelos.Materia, modelos.Usuario" %>

<%
	String sid = request.getParameter("id");
	int id = Integer.parseInt(sid);
	
	Materia m = MateriaDAO.getMateriabyID(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar materia</title>
</head>
<body>
<% 
		Usuario us = (Usuario)session.getAttribute("usu");
		if(us == null){
	%>
	<script type="text/javascript">
		window.location.href = "http://localhost:9090/ProyectoJSP/login.jsp"
	</script>
	<%} 
	%>
<h1 style="text-align: center">Editar una materia</h1>
	<form action="editar.jsp" method="post">
		<div>
			<table>
				<tr>
					<td><input type="hidden" name="id_materia" id="id_materia" value="<%=m.getId_materia()%>"/></td>
				</tr>
				<tr>
					<td><label for="clave_materia">Clave materia: </label></td>
					<td><input type="text" name="clave_materia" id="clave_materia" value="<%=m.getClave_materia()%>"/></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre" value="<%=m.getNombre()%>"/></td>
				</tr>
				<tr>
					<td><label for="abreviaturaCarrera">Abreviatura de Carrera: </label></td>
					<td><input type="text" name="abreviaturaCarrera" id="abreviaturaCarrera" value="<%=m.getAbreviaturaCarrera()%>"/></td>
				</tr>
				<tr>
					<td><label for="carrera">Carrera: </label></td>
					<td><input type="text" name="carrera" id="carrera" value="<%=m.getCarrera()%>"/></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre" value="<%=m.getSemestre()%>"/></td>
				</tr>
				<tr>
					<td><label for="horas_t">Horas teóricas: </label></td>
					<td><input type="text" name="horas_t" id="horas_t" value="<%=m.getHoras_t()%>"/></td>
				</tr>
				<tr>
					<td><label for="horas_p">Horas prácticas: </label></td>
					<td><input type="text" name="horas_p" id="horas_p" value="<%=m.getHoras_p()%>"/></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos" value="<%=m.getCreditos()%>"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="button" id="button" value="Editar"/></td>
				</tr>
			</table>
		</div>
		<p>
			<br>
		</p>
	</form>

</body>
</html>