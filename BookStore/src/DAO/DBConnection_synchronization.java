package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection_synchronization {
	private static DBConnection_synchronization dbInstance;
	private Connection connection;

	private DBConnection_synchronization() {
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
	

	public static synchronized DBConnection_synchronization getDBInstance() {
		if (dbInstance == null) {
			dbInstance = new DBConnection_synchronization();
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
