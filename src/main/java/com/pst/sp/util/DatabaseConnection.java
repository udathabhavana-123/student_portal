package com.pst.sp.util;

import java.io.FileInputStream;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DatabaseConnection {

	public static Connection getDatabaseConnection()  {
	Properties properties = readCredentials();	
	String driverName =	properties.getProperty("driver_class_name");
	String databaseName =	properties.getProperty("database_name");
	String userName = properties.getProperty("database_user_name");
	String password = properties.getProperty("database_password");
	String mysqlDbHost ="jdbc:mysql://localhost:3306/"+databaseName;
	Connection con =null;
	    
	    try {
			Class.forName(driverName);
			 con  = DriverManager.getConnection(mysqlDbHost,userName,password) ;
			System.out.println("connection done");
	    }catch(ClassNotFoundException cnfe) {
	    	System.out.println("Driver Not Found:"+cnfe);
			
		}catch(SQLException se) {
			System.out.println("Database Connection Error:"+se);
			
		}catch(Exception e) {
			System.out.println("Internal Server error:"+e);
		}
	    return con;
	}
	
	public static Properties readCredentials() {
		Properties props = null;
		try {
		FileInputStream fis = new FileInputStream("D:\\j2ee internship\\eclipce_workspace3\\student_portal\\src\\main\\webapp\\resources\\db_credentials.properties");
	    props  = new Properties();
		props.load(fis);
		
		} catch(Exception e) {
		
		System.out.println("Credentials file not available in specified location"+e);
		}
		return props;
}
	
	public static void closeConnection(Connection con) {
		try {
			con.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
