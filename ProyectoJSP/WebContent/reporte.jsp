<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reporte de materias</title>
</head>

<body>
	<a href="menu.jsp">Regresar a menú</a>
	<h1>Reporte de materias</h1>
	<h4>
		INSTITUTO TECNOLÓGICO DE LEÓN <br>
		DEPARTAMENTO DE SISTEMAS Y COMPUTACIÓN <br>
		PROGRAMACIÓN DE AGOSTO A DICIEMBRE 2020 <br>
	</h4>
	
	<table>
		<tr>
			<td>Nombre del Maestro</td>
			<td></td>
		</tr>
		<tr>
			<td>Clave del Maestro</td>
			<td></td>
		</tr>
		<tr>
			<td>Horas por impartir</td>
			<td></td>
		</tr>
		<tr>
			<td>Horas asignadas en Licenciatura</td>
			<td></td>
		</tr>
		<tr>
			<td>Horas asignadas en Posgrado</td>
			<td></td>
		</tr>
		<tr>
			<td>Total de horas asignadas</td>
			<td></td>
		</tr>
	</table>
	
	<br><br><br>
	
	<table>
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
		<tbody>
			<tr>
			</tr>
		</tbody>
	</table>
	
	<br><br>
	
	<p>
		NOTA: Los horarios coloreados (columnas LUNES a VIERNES) están <br>
		asignados en el laboratorio indicado. Los horarios no coloreados <br>
		están asignados en el aula marcada en la columna correspondiente.
	</p>
	<table>
	<tr>
		<td>L1</td>
		<td style="background-color:#28A4FE" width="50%"/>
		<td>D14</td>
	</tr>
	<tr>
		<td>L2</td>
		<td style="background-color:#4DFE4D" width="50%"/>
		<td>D15</td>
	</tr>
	<tr>
		<td>LBD</td>
		<td style="background-color:#FD424D" width="50%"/>
		<td>D11</td>
	</tr>
	<tr>
		<td>LDS</td>
		<td style="background-color:#FDFA42" width="50%"/>
		<td>D13</td>
	</tr>
	<tr>
		<td>LH</td>
		<td style="background-color:#CDCDCD" width="50%"/>
		<td>D12</td>
	</tr>
	<tr>
		<td>LCC</td>
		<td style="background-color:#FFCF97" width="50%"/>
		<td>LC3</td>
	</tr>
	</table>
	
</body>
</html>