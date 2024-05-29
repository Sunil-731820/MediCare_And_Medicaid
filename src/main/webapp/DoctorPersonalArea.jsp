<%@page import="com.java.jsp.PatientDAO"%>
<%@page import="com.java.jsp.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link
            href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
            rel="stylesheet" id="bootstrap-css">
        <script
        src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
        <script
        src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="css/register.css" type="text/css" />
         
</head>
<body>

	Welcome To the Doctor Personal Area In This Area Doctor can
	remove The Patient After treatment is done And Doctor Can add More
	patient one By one 
	
	<nav class="navbar navbar-expand-md navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"
                                                   height="30" width="100" alt="HospitalManagementSystem">
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse"
                    data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ml-auto" style="margin-right: 30px;">
                    <a class="dropdown-item" href="DashBoard.jsp">DashBoard</a>    
                </div>
            </div>
        </nav> 
        <div>
            <h1>
                <b>Welcome To Health Care</b>
               
            </h1>
        </div>
        
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
		<td><a href=DeletePatients.jsp?email=<%=patient.getEmail() %>>Delete</a></td>
		
	</tr>
		<%
		}
	%>	
	



</tbody>
</table>
        
                            
	
	

</body>
</html>