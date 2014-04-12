package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection_normal {
	private static DBConnection_normal dbInstance;
	private Connection connection;

	private DBConnection_normal() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection(
							"jdbc:mysql://localhost:3306/bookstore?characterEncoding=UTF-8",
							"root", "");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	

	public static DBConnection_normal getDBInstance() {
		if (dbInstance == null) {
			System.out.println("abc");
			dbInstance = new DBConnection_normal();
		}
		return dbInstance;
	}

	public Connection getConnection() {
		return connection;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}

}
