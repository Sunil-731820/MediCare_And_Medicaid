package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PatientDAO {
	Connection connection;
	PreparedStatement pst;
	
	public String addPatient(Patient patient) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "insert into patient(fname,lname,gender,city,email,age,address,date,mobile) values(?,?,?,?,?,?,?,?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1,patient.getFname());
		pst.setString(2, patient.getLname());
		pst.setString(3, patient.getGender());
		pst.setString(4, patient.getCity());
		pst.setString(5, patient.getEmail());
		pst.setString(6, patient.getAge());
		pst.setString(7, patient.getAddress());
		pst.setString(8, patient.getDate());
		pst.setString(9, patient.getMobile());
		pst.executeUpdate();
		return "Patient Records Added Successfully";
		
	}
	
//	This method is automatically generating The Patiens Id using the database 
	public int generatePatientId() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select max(id)+1 ano from patient ";
		pst = connection.prepareStatement(cmd);
		ResultSet res = pst.executeQuery();
		res.next();
		int id = res.getInt("ano");
		return id;
	}
	
	public Patient[] showPatient() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select *from patient";
		pst = connection.prepareStatement(cmd);
		ResultSet res = pst.executeQuery();
		List<Patient> patientList = new ArrayList<Patient>();
		Patient patient = null;
		while(res.next()) {
			 patient = new Patient();
			 patient.setFname(res.getString("fname"));
			 patient.setLname(res.getString("lname"));
			 patient.setGender(res.getString("gender"));
			 patient.setCity(res.getString("city"));
			 patient.setEmail(res.getString("email"));
			 patient.setAge(res.getString("age"));
			 patient.setAddress(res.getString("address"));
			 patient.setDate(res.getString("date"));
			 patient.setMobile(res.getString("mobile"));
			 patientList.add(patient);
		}
		return patientList.toArray(new Patient[patientList.size()]);
		
	}
	
//	This Method is used to delete The data from The database and Ui using SQL Query 
	public String deletePatient(String email) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "delete from patient where email=?";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, email);
		pst.executeUpdate();
		return "Patient Data Deleted Successfully";
		
	}

}
