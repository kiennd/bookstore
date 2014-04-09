package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static DBConnection dbConnection;
	public static DBConnection shareInstance() {
		if(dbConnection==null) {
			dbConnection = new DBConnection();
		}
		return dbConnection;
	}
	private static Connection conn;
	
	private static void initConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/bookstore?characterEncoding=UTF-8", "root", "hahaha");
			System.out.println("Connect successfully");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConn(){
		if(conn == null){
			initConn();
		}
		return conn;
	}
}
