package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	public Reception[] showReception() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select *from recp";
		pst = connection.prepareStatement(cmd);
		ResultSet res = pst.executeQuery();
		List<Reception> receptionList = new ArrayList<Reception>();
		Reception reception = null;
		while(res.next()) {
			reception = new Reception();
			reception.setFname(res.getString("fname"));
			reception.setLname(res.getString("lname"));
			reception.setMobile(res.getString("mobile"));
			reception.setDate(res.getString("date"));
			receptionList.add(reception);
		}
		return receptionList.toArray(new Reception[receptionList.size()]);
	}

}
