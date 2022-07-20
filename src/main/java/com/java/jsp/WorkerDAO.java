package com.java.jsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	
	public Worker[] showWorker() throws ClassNotFoundException, SQLException {
		connection = ConnectionHelper.getConnection();
		String cmd = "select *from worker";
		pst = connection.prepareStatement(cmd);
		ResultSet res = pst.executeQuery();
		List<Worker> workerList = new ArrayList<Worker>();
		Worker worker = null;
		while(res.next()) {
			worker = new Worker();
			worker.setFname(res.getString("fname"));
			worker.setLname(res.getString("lname"));
			worker.setMobile(res.getString("mobile"));
			worker.setDate(res.getString("date"));
			workerList.add(worker);
		}
		return workerList.toArray(new Worker[workerList.size()]);
		
	}
}
