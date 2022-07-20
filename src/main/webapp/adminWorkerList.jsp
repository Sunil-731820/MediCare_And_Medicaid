<%@page import="com.java.jsp.Worker"%>
<%@page import="com.java.jsp.WorkerDAO"%>
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
	WorkerDAO dao = new WorkerDAO();
	Worker[] arrReception = dao.showWorker();

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
		for(Worker worker: arrReception){
	%>	
	<tbody>
	<tr>
		
		<td scope="row"><%=worker.getFname() %></td>
		<td scope="row"><%=worker.getLname() %></td>
		<td scope="row"><%=worker.getMobile() %></td>
		<td scope="row"><%=worker.getDate() %></td>
		
	</tr>
		<%
		}
	%>	
	



</tbody>
</table>
</body>
</html>