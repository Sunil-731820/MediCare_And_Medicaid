<%@page import="com.java.jsp.Reception"%>
<%@page import="com.java.jsp.ReceptionDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>
<%
	ReceptionDAO dao = new ReceptionDAO();
	Reception[] arrReception = dao.showReception();

%>
<table class="table table-dark" border="12px">
<thead class="thead-dark">
	<tr >
		
		<th scope="col">First Name</th>
		<th scope="col">Last Name</th>
		<th scope="col">mobile Number </th>
		<th scope="col">Date</th>
	</tr>
</thead>
	<%
		for(Reception reception: arrReception){
	%>	
	<tbody>
	<tr>
		
		<td scope="row"><%=reception.getFname() %></td>
		<td scope="row"><%=reception.getLname() %></td>
		<td scope="row"><%=reception.getMobile() %></td>
		<td scope="row"><%=reception.getDate() %></td>
		
	</tr>
		<%
		}
	%>	
	



</tbody>
</table>


</body>
</html>