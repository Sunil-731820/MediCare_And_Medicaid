package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class WorkerDAO {

	Connection connection;
	PreparedStatement pst;
	
	public String addWorker(Worker worker) throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "insert into worker(fname,lname,mobile,date) values(?,?,?,?)";
		pst = connection.prepareStatement(cmd);
		pst.setString(1, worker.getFname());
		pst.setString(2, worker.getLname());
		pst.setString(3, worker.getMobile());
		pst.setString(4, worker.getDate());
		pst.executeUpdate();
		return "worker added SuccessFully";
	}
}
