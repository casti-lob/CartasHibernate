<%@page import="com.jacaranda.Card"%>
<%@page import="com.jacaranda.Login"%>
<%@page import="java.sql.DatabaseMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>login</title>
	</head>
	<body>
	<% 
			
			//cogemos los datos que ha insertado el usuario
			String user = request.getParameter("user");
			String password = request.getParameter("password");
			
			
			//comprobamos que esos datos son correctos
			Login l = new Login(user,password);	
			if(l.passwordConfirmation()==true){
				
				
				 HttpSession sesion = request.getSession();
				sesion.setAttribute("login","true");
				sesion.setAttribute("user",user);
				
				
		%>
				<jsp:forward page="Main.jsp"></jsp:forward>
		<% 
			}else{
		%>
				 <jsp:forward page="Wrong.jsp?msg='No estás logeado'"></jsp:forward>
		<%
			}
		%>
	</body>
</html>