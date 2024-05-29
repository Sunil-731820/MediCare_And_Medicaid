<%@page import="com.java.jsp.PatientDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String email = request.getParameter("email");
	PatientDAO dao = new PatientDAO();
	dao.deletePatient(email);
%>
<jsp:forward page="DoctorPersonalArea.jsp"></jsp:forward>
</body>
</html>