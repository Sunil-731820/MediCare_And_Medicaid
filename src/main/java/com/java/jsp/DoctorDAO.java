package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DoctorDAO {

	Connection connection;
	PreparedStatement pst;
	
	public String addDoctor(Doctor doctor) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "insert into doctor(id,fname,lname,gender,mobile,city,email,age,address,date,qualification) values(?,?,?,?,?,?,?,?,?,?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setInt(1, doctor.getId());
		pst.setString(2, doctor.getFname());
		pst.setString(3, doctor.getLname());
		pst.setString(4, doctor.getGender());
		pst.setString(5, doctor.getMobile());
		pst.setString(6, doctor.getCity());
		pst.setString(7, doctor.getEmail());
		pst.setString(8, doctor.getAge());
		pst.setString(9, doctor.getAddress());
		pst.setString(10, doctor.getDate());
		pst.setString(11, doctor.getQualification());
		pst.executeUpdate();
		return "Doctor Added SuccessFully";
	}
	
}
