<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO, modelos.Materia" %>

<%
	String sid = request.getParameter("idMateria");
	int id = Integer.parseInt(sid);
	
	Materia m = MateriaDAO.getMateriabyID(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar materia</title>
</head>
<body>
<h1 style="text-align: center">Editar una materia</h1>
	<form action="editarDatos.jsp" method="post">
		<div>
			<table>
				<tr>
					<td><input type="hidden" name="idMateria" id="idMateria" value="${m.getIdMateria()}"></td>
				</tr>
				<tr>
					<td><label for="clave">Clave materia: </label></td>
					<td><input type="text" name="clave" id="clave" value="${m.getClave_Materia()}"></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre"></td>
				</tr>
				<tr>
					<td><label for="abreviaturaCarrera">Abreviatura de Carrera: </label></td>
					<td><input type="text" name="abreviaturaCarrera" id="abreviaturaCarrera" value=""></td>
				</tr>
				<tr>
					<td><label for="carrera">Carrera: </label></td>
					<td><input type="text" name="carrera" id="carrera" value=""></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre" value=""></td>
				</tr>
				<tr>
					<td><label for="horasT">Horas teóricas: </label></td>
					<td><input type="text" name="horasT" id="horasT" value=""></td>
				</tr>
				<tr>
					<td><label for="horasP">Horas teóricas: </label></td>
					<td><input type="text" name="horasP" id="horasP" value=""></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos" value=""></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="button" id="button" value="Editar"></td>
				</tr>
			</table>
		</div>
		<p>
			<br>
		</p>
	</form>

</body>
</html>