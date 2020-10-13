<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Administración de materias</title>
</head>
<body>

<%
    String pagina = "/login.jsp";
	HttpSession session = request.getSession(false);
	if (session != null) {		
		HttpSession session1=request.getSession();  
	    session1.invalidate();   
		out.print("Has cerrado sesión exitosamente!");
	} else {
		out.print("Por favor, primero ingresa a tu cuenta!");
	}
	
	RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
	dispatcher.forward(request, response);
%>

</body>
</html>