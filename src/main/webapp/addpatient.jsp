<%@page import="com.java.jsp.Patient"%>
<%@page import="com.java.jsp.PatientDAO"%>
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
<body>

<%
	PatientDAO dao = new PatientDAO();


%>
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
                    <a class="dropdown-item" href="HomePage.jsp">Home</a>    
                </div>
            </div>
        </nav> 
        <div>
            <h1>
                <b>Welcome To Health Care</b>
            </h1>
        </div>
        <form action="addpatient.jsp" method="post">
            <!-- Sign up form -->
            <section class="signup">
                <div class="container"> 
                    <div class="signup-content"> 
                        <div class="signup-form">
                            <h2 class="form-title">Add Doctor</h2>
                            <form class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
                                    <input type="text" name="fname" id="email" placeholder="Enter Your First Name" required="required" />
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="lname" id="pass" placeholder="Enter Your last Name" required="required"/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="gender" id="pass" placeholder="Enter Gender" required="required"/>
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="city" id="pass" placeholder="Enter Your City Name" required="required"/>
                                </div>
                               
                                 <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="email" id="pass" placeholder="Enter Your Email Id " required="required"/>
                                </div>
                               
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="age" id="pass" placeholder="Enter Age" required="required"/>
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="address" id="pass" placeholder="Enter Your Address" required="required"/>
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="date" id="pass" placeholder="Enter the Date" required="required"/>
                                </div>
                                 <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="text" name="mobile" id="pass" placeholder="Enter Your Mobile Number" required="required"/>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup" class="form-submit" value="Add Patient"/>
                                </div>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="img/signup-image.jpg" alt="sing up image"></figure>
                            <h2><a href="DashBoard.jsp" class="signup-image-link">DashBoard</a></h2>
                        </div>
                    </div>
                </div>
            </section>
        </form>
        
        <%
        	if(request.getParameter("mobile")!=null && request.getParameter("age")!=null){
        		Patient patient = new Patient();
        		patient.setFname(request.getParameter("fname"));
        		patient.setLname(request.getParameter("lname"));
        		patient.setGender(request.getParameter("gender"));
        		patient.setCity(request.getParameter("city"));
        		patient.setEmail(request.getParameter("email"));
        		patient.setAge(request.getParameter("age"));
        		patient.setAddress(request.getParameter("address"));
        		patient.setDate(request.getParameter("date"));
        		patient.setMobile(request.getParameter("mobile"));
        		dao.addPatient(patient);
        		
        	}
        
        
        
        
        
        %>

</body>
</html>