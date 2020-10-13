<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Crear una materia</title>
</head>
<body>

<h1 style="text-align: center">Añadir una materia</h1>
	<form action="nuevaMateria.jsp" method="post">
		<div>
			<table>
				<tr>
					<td><label for="clave_materia">Clave materia: </label></td>
					<td><input type="text" name="clave_materia" id="clave_materia"></td>
				</tr>
				<tr>
					<td><label for="nombre">Nombre: </label></td>
					<td><input type="text" name="nombre" id="nombre"></td>
				</tr>
				<tr>
					<td><label for="abreviaturaCarrera">Abreviatura de Carrera: </label></td>
					<td><input type="text" name="abreviaturaCarrera" id="abreviaturaCarrera" placeholder="Ej. ISX"></td>
				</tr>
				<tr>
					<td><label for="carrera">Carrera: </label></td>
					<td><input type="text" name="carrera" id="carrera"></td>
				</tr>
				<tr>
					<td><label for="semestre">Semestre: </label></td>
					<td><input type="number" name="semestre" id="semestre"></td>
				</tr>
				<tr>
					<td><label for="horas_t">Horas teóricas: </label></td>
					<td><input type="text" name="horas_t" id="horas_t"></td>
				</tr>
				<tr>
					<td><label for="horas_p">Horas prácticas: </label></td>
					<td><input type="text" name="horas_p" id="horas_p"></td>
				</tr>
				<tr>
					<td><label for="creditos">Créditos: </label></td>
					<td><input type="number" name="creditos" id="creditos"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						name="button" id="button" value="Guardar"></td>
				</tr>
			</table>
		</div>
		<p>
			<br>
		</p>
	</form>

</body>
</html>