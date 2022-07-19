package com.java.jsp;

public class Worker {
	
	private String fname;
	private String lname;
	private String mobile;
	private String date;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Worker [fname=" + fname + ", lname=" + lname + ", mobile=" + mobile + ", date=" + date + "]";
	}
	
	

}
