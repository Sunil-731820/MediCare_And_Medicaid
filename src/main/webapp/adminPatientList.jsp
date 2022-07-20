<%@page import="com.java.jsp.Patient"%>
<%@page import="com.java.jsp.PatientDAO"%>
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
	PatientDAO dao = new PatientDAO();
	Patient[] arrPatient = dao.showPatient();

%>
<table class="table table-dark" border="12px">
<thead class="thead-dark">
	<tr >
		
		<th scope="col">First Name</th>
		<th scope="col">Last Name</th>
		<th scope="col">Gender</th>
		<th scope="col">City</th>
		<th scope="col">Email</th>
		<th scope="col">Age</th>
		<th scope="col">Address</th>
		<th scope="col">Date</th>
		<th scope="col">Mobile Number</th>
	</tr>
</thead>
	<%
		for(Patient patient: arrPatient){
	%>	
	<tbody>
	<tr>
		<td scope="row"><%=patient.getFname() %></td>
		<td scope="row"><%=patient.getLname()%></td>
		<td scope="row"><%=patient.getGender() %></td>
		<td scope="row"><%= patient.getCity()%></td>
		<td scope="row"><%=patient.getEmail() %></td>
		<td scope="row"><%= patient.getAge()%></td>
		<td scope="row"><%= patient.getAddress()%></td>
		<td scope="row"><%=patient.getDate()%></td>
		<td scope="row"><%=patient.getMobile() %></td>
		
	</tr>
		<%
		}
	%>	
	



</tbody>
</table>


</body>
</html>