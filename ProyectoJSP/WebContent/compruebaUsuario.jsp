<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="false"%>
<%@ page import="DAO.LoginDAO, modelos.Usuario, javax.servlet.http.HttpSession, java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String n=request.getParameter("usuario");  
	String p=request.getParameter("contrasena");
	
	String pagina = "login.jsp";

	if (LoginDAO.validar(n, p)) {
		Usuario us = LoginDAO.rolUsuario(n, p);
		HttpSession session = request.getSession();
		session.setAttribute("titulo", us.getTitulo());
		session.setAttribute("usuario", us.getNombre());
		session.setAttribute("rol", us.getRol());
		pagina = "/menu.jsp";
	} else {
		out.print("Lo sentimos, error de usuario o contraseña!");
		pagina = "/login.jsp";
	}

	RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
	dispatcher.forward(request, response);
%>
</body>
</html>