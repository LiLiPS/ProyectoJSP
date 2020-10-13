<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO, modelos.Materia" %>

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
<h1 style="text-align: center">Editar una materia</h1>
	<form action="editar.jsp" method="post">
		<div>
			<table>
				<tr>
					<td><input type="hidden" name="idMateria" id="idMateria" value="<%=m.getIdMateria() %>"></td>
				</tr>
				<tr>
					<td><label for="clave">Clave materia: </label></td>
					<td><input type="text" name="clave" id="clave" value="<%=m.getClave_materia()%>"></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre" value="<%=m.getNombre()%>"></td>
				</tr>
				<tr>
					<td><label for="abreviaturaCarrera">Abreviatura de Carrera: </label></td>
					<td><input type="text" name="abreviaturaCarrera" id="abreviaturaCarrera" value="<%=m.getAbreviaturaCarrera()%>"></td>
				</tr>
				<tr>
					<td><label for="carrera">Carrera: </label></td>
					<td><input type="text" name="carrera" id="carrera" value="<%=m.getCarrera()%>"></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre" value="<%=m.getSemestre()%>"></td>
				</tr>
				<tr>
					<td><label for="horasT">Horas teóricas: </label></td>
					<td><input type="text" name="horasT" id="horasT" value="<%=m.getHoras_t()%>"></td>
				</tr>
				<tr>
					<td><label for="horasP">Horas prácticas: </label></td>
					<td><input type="text" name="horasP" id="horasP" value="<%=m.getHoras_p()%>"></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos" value="<%=m.getCreditos()%>"></td>
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