<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.java.jsp.Doctor"%>
<%@page import="com.java.jsp.DoctorDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.java.jsp.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <link rel="stylesheet" type="text/css" href="css/adddataform.css">
        <link rel="stylesheet" type="text/css" href="css/adddatafrm1.css">
        <link rel="stylesheet" type="text/css" href="css/table.css">
        <style>
            body {
                background-image: url("img/Medical.jpg");
                background-color: #cccccc;
            }
            .serchbar
            {
                width: 60%;
                height: 5%;
                margin-top:2%; 
                margin-left: 100px;
                margin-bottom: 0%;
            }
            .search
            {
                width: 40%;
                height: 40px; 
                border-radius: 30px;
            }
            .text-center{
                color: grey;
                padding: 10px;
                margin-top: 0px;
            }
            input {
                text-align: center;
            }
            ::-webkit-input-placeholder {
                text-align: center;
            }
            :-moz-placeholder {
                text-align: center;
            }
            .mybutton{
                display: inline;
            }
        </style>
</head>
<body>
<%
	DoctorDAO dao = new DoctorDAO();
	Doctor[] arrdoctor = dao.showDoctor();

%>
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand"> <img src="img/2855.jpeg"
                                                   height="30" width="100" alt="HospitalManagementSystem">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <h3>
                    <b>Hospital Management System</b>
                </h3>
                <ul class="navbar-nav ml-auto" style="margin-right: 70px;">

                    <li class="nav-item active">
                        <a class="nav-link" href="AdminHome.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            PATIENT
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addpatient.jsp">Add Patient</a>
                            <a class="dropdown-item" href="adminPatientList.jsp">Patient List</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            DOCTOR
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addDoctor.jsp">Add Doctor</a>
                            <a class="dropdown-item" href="adminDoctorList.jsp">View Doctor</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            RECEPTIONIST
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addRecp.jsp">Add Receptonist</a>
                            <a class="dropdown-item" href="adminRecpList.jsp">View Receptonist</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            WORKER
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="addWorker.jsp">Add Worker</a>
                            <a class="dropdown-item" href="adminWorkerList.jsp">View Worker</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>


        <div class="serchbar">
            <form action=" " method="post">
                <input class="search" type="text" name="search" placeholder="Search Here..."/>
            </form>
        </div>
        
        <table border="20px">
        	<tr>
        		<th>Doctor Id</th>
        		<th>Doctor First Name</th>
        		<th>Doctor Last Name</th>
        		<th>Gender</th>
        		<th>Mobile</th>
        		<th>City</th>
        		<th>Email Id</th>
        		<th>Age</th>
        		<th>Address</th>
        		<th>Date</th>
        		<th>Qualification</th>
        	</tr>
        	<%
        		for(Doctor doctor : arrdoctor){ 
        	%>
        	<tr>
        		<td><%=doctor.getId() %></td> 
        		<td><%=doctor.getFname() %></td>
        		<td><%=doctor.getLname() %></td>
        		<td><%= doctor.getGender()%></td>
        		<td><%=doctor.getMobile() %></td>
        		<td><%=doctor.getCity() %></td>
        		<td><%=doctor.getEmail() %></td>
        		<td><%=doctor.getAge() %></td>
        		<td><%=doctor.getAddress() %></td>
        		<td><%=doctor.getDate() %></td>
        		<td><%=doctor.getQualification() %></td>  
        	<td><a href=UpdateAgent.jsp?id=<%= %>>Update</a></td>
		    <td><a href=DeleteAge.jsp?id=<%= %>>Delete</a></td>
        	
        	</tr>
        			
        	<% 
        		}
        	%>
        	
        
        	
        </table>
       
</body>
</html>