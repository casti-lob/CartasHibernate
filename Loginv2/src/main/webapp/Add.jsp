
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
			//String date = request.getParameter("date");
			//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			//Date finalDate = format.parse(request.getParameter("date"));
			//java.sql.Date date2 = new java.sql.Date(finalDate);
			String date = request.getParameter("date");
			boolean activeInput = false;
			
			
			c.addCard(name, price,date, activeInput);
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