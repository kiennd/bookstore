package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection_ClassLoader {
	private static DBConnection_ClassLoader dbInstance;
	private Connection connection;

	private DBConnection_ClassLoader() {
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
	
	private static class InstanceHolder {
	    private static final DBConnection_ClassLoader instance = new DBConnection_ClassLoader();
	}
	public static DBConnection_ClassLoader getDBInstance() {
		if (dbInstance == null) {
			dbInstance = InstanceHolder.instance;
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
