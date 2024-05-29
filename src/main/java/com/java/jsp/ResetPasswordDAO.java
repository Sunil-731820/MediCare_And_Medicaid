package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResetPasswordDAO {
	
	Connection connection ;
	PreparedStatement pst;
	
	public String resetRegisterForSuperAccess(ResetPassword resetpassword) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "insert into forpasswordreset(userName,password)"+
				" values (?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, resetpassword.getUserName());
		pst.setString(2, resetpassword.getPassword());
		pst.executeUpdate();
		System.out.println("Reset Register page is called :");
		return "Super User Register Successfully";
		
	}
	
	public int resetSuperAccessLogin(String userName , String password) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select count(*) cnt from forpasswordreset where userName=? and password=?";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, userName);
		pst.setString(2, password);
		ResultSet res = pst.executeQuery();
		res.next();
		int count = res.getInt("cnt");
		return count;
	}

}
