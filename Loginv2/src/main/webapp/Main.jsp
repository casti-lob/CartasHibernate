<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jacaranda.Card"%>
    <%@page import="com.jacaranda.Login"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="Main.css">
		<title>Cartas Gwent</title>
		<link rel="shortcut icon" href="icon.png">
	</head>
	<body>
		<% 
			Login m = new Login();
			Card c = new Card(m.getPasswBD()); 
		%>
		
		<div align="center">
			<%
			List<Card> list = c.showCard();
			StringBuilder element = new StringBuilder(); 
			element.append("<table>");
			element.append("<tr><td align=center colspan=8><img height=300px width=700px  src=https://images.gog-statics.com/934e329b61f010fb039c7a6d82b477ad254bf70a5e0a0709b4c43524645f2a42.jpg> </td></tr>");
			element.append("<tr> <td style='padding:10px'><b>Código</b></td style='padding:10px'><td style='padding:10px'><b>Nombre</b></td><td style='padding:10px'><b>Precio</b></td><td style='padding:10px'><b>Adquisición</b></td><td style='padding:10px'><b>En Uso</b></td><td style='padding:10px'><b>Borrar</b></td><td style='padding:10px'><b>Modificar</b></td></tr>");
			for(int i =0;i<list.size();i++){
				element.append("<tr>");
				
				element.append("<td>"+list.get(i).getCode()+"</td>");
				element.append("<td>"+list.get(i).getName()+"</td>");
				element.append("<td>"+list.get(i).getPrice()+"</td>");
				element.append("<td>"+list.get(i).getAcquisition()+"</td>");
				element.append("<td>"+list.get(i).getActive()+"</td>");
				element.append("<td><a href='Delete.jsp?key="+list.get(i).getCode()+"'><img width=50px id=delete src=dele.png ></a></td>");
				element.append("<td><a href='Modify.jsp?key="+list.get(i).getCode()+"'><img width=50px id=mod src=mof.png ></a></td>");
				element.append("</tr>");
			}
			
			element.append("<tr><td align=center colspan=8><h2>AGREGAR</h2><a href=Add.html><img width=150px src=add.png ></a> </td></tr>");
			element.append("</table>");
			%>
			<%= element.toString()%>
		</div>

		
	</body>
</html>