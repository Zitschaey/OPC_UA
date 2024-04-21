package services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionManager {

	public static Connection createConnection() {
		String connStr = "jdbc:mysql://localhost:3306/testdatenbank";
		try {
			return DriverManager.getConnection(connStr, "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
