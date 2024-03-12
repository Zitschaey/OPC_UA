package db_services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import anlageObjekte.MySensor;

public class DatabaseService {

	private static String connStr = "jdbc:mysql://localhost:3306/testdatenbank";

	
	public static Connection createConnection() throws SQLException {
		
		return  DriverManager.getConnection(connStr, "root", "");
	};
	
	public static List <MySensor> getSensorByStation(int stationID) throws SQLException{
	List<MySensor> sensors = new ArrayList<>();
	Connection connection = createConnection();
	String sql = "SELECT * FROM sensor WHERE StationID = ?";
	try(PreparedStatement statement = connection.prepareStatement(sql)) {
		statement.setInt(1, stationID);
		try(ResultSet resultSet  = statement.executeQuery()) {
			while (resultSet.next()) {
				MySensor sensor = new MySensor();
				sensor.setBrowseName(resultSet.getString("AnzeigeName"));
				sensor.setNodeId(resultSet.getInt("KnotenId"));
				sensor.setSensorId(resultSet.getInt("SensorId"));
				sensors.add(sensor);
				
			}
			
			
			return sensors;
		}
	}
		
	} 
	
}
