package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReceptionDAO {
	Connection connection;
	PreparedStatement pst;
	
	
	public String addReception(Reception reception) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "insert into recp(fname,lname,mobile,date) values(?,?,?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, reception.getFname());
		pst.setString(2, reception.getLname());
		pst.setString(3, reception.getMobile());
		pst.setString(4, reception.getDate());
		pst.executeUpdate();
		return "Reception Person Added SuccessFully";
	}

}
