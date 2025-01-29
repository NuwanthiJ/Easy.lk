package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBConnect {

	
	
	
	private static Connection conn;
	
	
	public static  Connection getConn() {
		
		
		try {
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopping","root","Root@123");
			
			
			 System.out.println("DB Connected");
			
		}catch(Exception e) {
			
			System.out.println("error");
			
			e.printStackTrace();
			
		}
		
		return conn;
		
		
		
		
	}
	
	
          
          
          
	
	
	
	
	
	
	
	
	
	
	
	
}
