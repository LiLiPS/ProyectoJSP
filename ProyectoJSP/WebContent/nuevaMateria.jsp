<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO, modelos.Usuario"%>
<jsp:useBean id="m" class="modelos.Materia"></jsp:useBean>  
<jsp:setProperty property="*" name="m"/>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Nueva Materia</title>
	</head>
	<body>

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
			int i = MateriaDAO.guardarMateria(m);  
			if(i>0){  
				response.sendRedirect("materias.jsp");  
			}else{  
				response.sendRedirect("crearMateria.jsp");  
			}  
			}
			}
		%>  

	</body>
</html>
  
