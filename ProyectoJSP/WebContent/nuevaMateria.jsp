<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO"%>
<jsp:useBean id="m" class="modelos.Materia"></jsp:useBean>  
<jsp:setProperty property="*" name="m"/>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Nueva Materia</title>
	</head>
	<body>

		<%  
			int i = MateriaDAO.guardarMateria(m);  
			if(i>0){  
				response.sendRedirect("materias.jsp");  
			}else{  
				response.sendRedirect("crearMateria.jsp");  
			}  
		%>  

	</body>
</html>
  
