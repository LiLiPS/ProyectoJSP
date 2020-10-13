<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administración de materias</title>
<link rel="stylesheet" href="estilos/estiloLogin.css">
<!--  <style>
body {
	background: #FDD761;
	font-family: 'Lucida Sans Unicode', 'Arial', serif;
}

div{
	margin: 50px 270px;
	width: 500px;
}

table {
	background: #f6ecc6;
	padding: 2px;
	border: solid 2px #f5c410;
}

h1 {
	color: white;
	margin: 50px 0 20px;
	text-transform: uppercase;
	font-size: 2.6rem;
}

td {
	padding: 5px 0;
}

input{
	border-radius: 10px 10px 10px 10px;
}
</style>-->
</head>
<body>
	<div class="body"></div>
	<div class="grad"></div>
	<div class="header">
		<div><h1>LOGIN</h1></div>
	</div>
	
	<form action="compruebaUsuario.jsp" method="post">
		<div class="login">
			<table>
				<tr>
					<td><input type="text" name="usuario" id="usuario" placeholder="Usuario"></td>
				</tr>
				<tr>
					<td><input type="password" name="contrasena" id="contrasena" placeholder="Contraseña"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><button type="submit"
						name="button" id="button">Entrar</button></td>
				</tr>
			</table>
		</div>
		<p>
			<br>
		</p>
	</form>

</body>
</html>