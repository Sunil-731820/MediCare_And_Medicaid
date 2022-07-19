package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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

}
