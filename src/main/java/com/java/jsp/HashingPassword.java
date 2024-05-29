package com.java.jsp;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashingPassword {
	
//	Hashing During The Registration Parts 
	public String hashingThepassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
            	
                sb.append(String.format("%02x", b));
            }
            System.out.println("The String is : ="+sb);
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
	
//	Hashing During the login Attempts 
	public String hashPasswordForLoginAttempts(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashedBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashedBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

}
