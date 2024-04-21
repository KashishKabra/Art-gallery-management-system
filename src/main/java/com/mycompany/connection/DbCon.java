package com.mycompany.connection;

//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DbCon {
//	private static Connection connection=null;
//	
//	public static Connection getConnection() throws ClassNotFoundException, SQLException {
//		if(connection ==  null) {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ArtGalleryDatabase","root","kashishmysql123");
//			System.out.println("connected");
//		}
//		return connection;
//	}
//	
//


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DbCon{
	private static Connection conn;

	public static Connection provideConnection() {
		
		
		try {
			if (conn == null || conn.isClosed()) {
				ResourceBundle rb = ResourceBundle.getBundle("application");
				String connectionString = rb.getString("jdbc:mysql://localhost:3306/ArtGalleryDatabase");
				String driverName = rb.getString("com.mysql.cj.jdbc.Driver");
				String username = rb.getString("root");
				String password = rb.getString("kashishmysql123");
				try {
					Class.forName(driverName);
					
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				conn = DriverManager.getConnection(connectionString, username, password);
				System.out.println("connected");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}
}

