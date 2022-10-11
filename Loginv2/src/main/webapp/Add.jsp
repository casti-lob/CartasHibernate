<%@page import="com.jacaranda.Card"%>
 <%@page import="com.jacaranda.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		HttpSession sesion = request.getSession();
		String isSesion = (String) sesion.getAttribute("login");
		String userSesion = (String) sesion.getAttribute("user");
		
		if(isSesion != null && userSesion != null && isSesion.equals("true")){
			Login m = new Login();
			String password = m.getPasswBD();
			Card c = new Card(password); 
			String name = request.getParameter("nameInput");
			double price = Integer.parseInt(request.getParameter("priceInput"));
			String active = request.getParameter("active");
			boolean activeInput = false;
			if(active != null){
				activeInput = true;
			}
			c.addCard(name, price, activeInput);
		%>
			<jsp:forward page="Main.jsp"></jsp:forward>
		 }else{
		%>
			 <jsp:forward page="Wrong.jsp?msg='No estás logeado'"></jsp:forward> 
		<% 
		 } 
		%>
	</body>
</html>