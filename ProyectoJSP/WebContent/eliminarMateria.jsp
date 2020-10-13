<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="DAO.MateriaDAO"%>
<jsp:useBean id="m" class="modelos.Materia"></jsp:useBean>  
<jsp:setProperty property="*" name="m"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Borrar materia</title>
</head>
<body>
	<%  
			String sid = request.getParameter("id");
			int id = Integer.parseInt(sid);
			
			int i = MateriaDAO.borrarMateria(id);  
			response.sendRedirect("materias.jsp");
		%>  
</body>
</html>