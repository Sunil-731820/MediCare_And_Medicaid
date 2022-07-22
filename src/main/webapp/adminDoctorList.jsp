<%@page import="com.java.jsp.Doctor"%>
<%@page import="com.java.jsp.DoctorDAO"%>
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
	<style type="text/css">
        body {
            background-image: url("img/Medical.jpg");
            background-color: #cccccc;
        }
        .img-rounded {
            height: 100%;
            width: 100%;
        }
        h1 {
            color: white;
            text-align: center;
        }
    </style>
</head>
<body >
<%
	DoctorDAO dao = new DoctorDAO();
	Doctor[] arrDoctor = dao.showDoctor();

%>
<table class="table table-dark" border="12px">
<thead class="thead-dark">
	<tr >
		<th scope="col">Id</th>
		<th scope="col">First Name</th>
		<th scope="col">Last Name</th>
		<th scope="col">Gender</th>
		<th scope="col">mobile Number </th>
		<th scope="col">City</th>
		<th scope="col">Email</th>
		<th scope="col">Age</th>
		<th scope="col">Address</th>
		<th scope="col">Date</th>
		<th scope="col">Qualification</th>
	</tr>
</thead>
	<%
		for(Doctor doctor: arrDoctor){
	%>	
	<tbody>
	<tr>
		<td scope="row"><%=doctor.getId() %></td>
		<td scope="row"><%=doctor.getFname() %></td>
		<td scope="row"><%=doctor.getLname() %></td>
		<td scope="row"><%=doctor.getGender() %></td>
		<td scope="row"><%=doctor.getMobile() %></td>
		<td scope="row"><%=doctor.getCity() %></td>
		<td scope="row"><%=doctor.getEmail() %></td>
		<td scope="row"><%=doctor.getAge() %></td>
		<td scope="row"><%=doctor.getAddress() %></td>
		<td scope="row"><%=doctor.getDate() %></td>
		<td scope="row"><%=doctor.getQualification() %></td>
	</tr>
		<%
		}
	%>	
	



</tbody>
</table>

</body>
</html>