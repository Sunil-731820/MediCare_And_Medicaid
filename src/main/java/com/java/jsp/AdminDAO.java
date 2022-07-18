package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {
	Connection connection ;
	PreparedStatement pst;
	
	public String adminRegister(Admin admin) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "insert into adminreg(username,password)"+
				" values (?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, admin.getUsername());
		pst.setString(2, admin.getPassword());
		pst.executeUpdate();
		return "Admin Register Successfully";
		
	}
	
//	public String adminLoging(Admin admin) throws ClassNotFoundException, SQLException {
//		connection = ConnectionHelper.getConnection();
//		String cmd = "select *from adminreg";
//		pst = connection.prepareStatement(cmd);
//		
//		
//	}
	public int adminLogIn(String username , String password) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select count(*) cnt from adminreg where username=? and password=?";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, username);
		pst.setString(2, password);
		ResultSet res = pst.executeQuery();
		res.next();
		int count = res.getInt("cnt");
		return count;
	}

}
