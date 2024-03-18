package services;

import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import enums.Stationen;
import models.MySensor;

public class DatabaseService {

	public static Connection createConnection() throws SQLException {

		String connStr = "jdbc:mysql://localhost:3306/testdatenbank";
		return DriverManager.getConnection(connStr, "root", "");
	}

	public static List<MySensor> getSensorByStation(Stationen station) throws SQLException {
		List<MySensor> sensors = new ArrayList<>();
		Connection connection = createConnection();
		String sql = "SELECT * FROM sensor WHERE StationID = ?";
		try (PreparedStatement statement = connection.prepareStatement(sql)) {
			statement.setInt(1, station.getStationID());
			try (ResultSet resultSet = statement.executeQuery()) {
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
	
	public static List<MySensor> getSensorById(int sensorId) throws SQLException {
	    List<MySensor> sensors = new ArrayList<>();
	    Connection connection = createConnection();
	    String sql = "SELECT * FROM sensor WHERE SensorId = ?";
	    try (PreparedStatement statement = connection.prepareStatement(sql)) {
	        statement.setInt(1, sensorId);
	        try (ResultSet resultSet = statement.executeQuery()) {
	            if (resultSet.next()) {
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



	public static void consoleMachine(Stationen station) throws Exception {

		// Sensorliste erstellen
		SensorList sensorlist = StationService.createSensorList(station);
		List<MySensor> rawList = DatabaseService.getSensorByStation(station);
		OPCClientETS.getInstance().connectToMachine(station.getStation());
		OPCClientETS.getInstance().setCrawlOffset(1000);
		OPCClientETS.getInstance().browseOPCServer(sensorlist);

		// InputStream erhalten
		InputStream in = OPCClientETS.getInstance().getInputStream();

		StringBuilder sensorData = new StringBuilder();
		byte[] buffer = new byte[1024];
		int bytesRead;
		
		while ((bytesRead = in.read(buffer)) != -1) {
		    String data = new String(buffer, 0, bytesRead);
		    sensorData.append(data);

		    // Suche nach "--" als Trennzeichen
		    int separatorIndex = sensorData.indexOf("--");
		    if (separatorIndex != -1) {
		        // Extrahiere die Zeile bis zum Trennzeichen
		        String sensorLine = sensorData.substring(0, separatorIndex);
		        
		        // Überprüfe, ob die Zeile den Sensor enthält
		        int sensorIndex = sensorLine.indexOf("Sensor:");
		        if (sensorIndex != -1) {
		            // Extrahiere die Sensorinformationen und entferne sie aus der Zeile
		            String sensorInfo = sensorLine.substring(sensorIndex);
		            sensorLine = sensorLine.substring(0, sensorIndex);
		        }
		        
		        // Ausgabe des Werts (Value) aus der Zeile
		        String[] parts = sensorLine.split("VALUE: ");
		        if (parts.length > 1) {
		            String valueLine = parts[1].trim();
		            System.out.println(valueLine);
		        }
		        
		        // Lösche die verarbeitete Zeile aus dem StringBuilder
		        sensorData.delete(0, separatorIndex + 2); // +2, um auch das Trennzeichen zu entfernen
		    }
		}
	}

	public static void inserDataCrawler(Stationen station, int id) throws Exception {

		// Sensorliste erstellen
		SensorList sensorlist = StationService.createSensorListForOne(id);
		List<MySensor> rawList = DatabaseService.getSensorById(id);
		OPCClientETS.getInstance().connectToMachine(station.getStation());
		OPCClientETS.getInstance().setCrawlOffset(1000);
		OPCClientETS.getInstance().browseOPCServer(sensorlist);

		// InputStream erhalten
		InputStream in = OPCClientETS.getInstance().getInputStream();

		// Datenbankverbindung herstellen
		Connection connection = createConnection();

		// Prepared Statement zum Einfügen von Daten erstellen
		String insertSql = "INSERT INTO datacrawl (CrawlerID, StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?, ?)";
		try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
			StringBuilder sensorData = new StringBuilder();
			byte[] buffer = new byte[1024];
			int index = 0;
			int bytesRead;
			int highestID = getHighestcrawlerID(connection);
			
			
			while ((bytesRead = in.read(buffer)) != -1) {
			    String data = new String(buffer, 0, bytesRead);
			    sensorData.append(data);

			    // Suche nach "--" als Trennzeichen
			    int separatorIndex = sensorData.indexOf("--");
			    if (separatorIndex != -1) {
			        // Extrahiere die Zeile bis zum Trennzeichen
			        String sensorLine = sensorData.substring(0, separatorIndex);
			        
			        // Überprüfe, ob die Zeile den Sensor enthält
			        int sensorIndex = sensorLine.indexOf("Sensor:");
			        if (sensorIndex != -1) {
			            // Extrahiere die Sensorinformationen und entferne sie aus der Zeile
			            String sensorInfo = sensorLine.substring(sensorIndex);
			            sensorLine = sensorLine.substring(0, sensorIndex);
			        }
			        
			        // Ausgabe des Werts (Value) aus der Zeile
			        String[] parts = sensorLine.split("VALUE: ");
			        if (parts.length > 1) {
			        	String valueLine = parts[1].trim();
						highestID++;
						statement.setInt(1, highestID);
						statement.setInt(2, station.getStationID());
						statement.setInt(3, rawList.get(index).getSensorId());
						statement.setInt(4, insertDataValue(connection, valueLine));	
						statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
						statement.executeUpdate();
						System.out.println("Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
						index++;
			        }
			        
			        // Lösche die verarbeitete Zeile aus dem StringBuilder
			        sensorData.delete(0, separatorIndex + 2);
			        
			        if (rawList.size() == index) {
						break;

					}
			    }
			}
		}
				
		
	}
	public static void inserDataCrawler(Stationen station) throws Exception {

		// Sensorliste erstellen
		SensorList sensorlist = StationService.createSensorList(station);
		List<MySensor> rawList = DatabaseService.getSensorByStation(station);
		OPCClientETS.getInstance().connectToMachine(station.getStation());
		OPCClientETS.getInstance().setCrawlOffset(1000);
		OPCClientETS.getInstance().browseOPCServer(sensorlist);

		// InputStream erhalten
		InputStream in = OPCClientETS.getInstance().getInputStream();

		// Datenbankverbindung herstellen
		Connection connection = createConnection();

		// Prepared Statement zum Einfügen von Daten erstellen
		String insertSql = "INSERT INTO datacrawl (CrawlerID, StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?, ?)";
		try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
			StringBuilder sensorData = new StringBuilder();
			byte[] buffer = new byte[1024];
			int index = 0;
			int bytesRead;
			int highestID = getHighestcrawlerID(connection);
			
			
			while ((bytesRead = in.read(buffer)) != -1) {
			    String data = new String(buffer, 0, bytesRead);
			    sensorData.append(data);

			    // Suche nach "--" als Trennzeichen
			    int separatorIndex = sensorData.indexOf("--");
			    if (separatorIndex != -1) {
			        // Extrahiere die Zeile bis zum Trennzeichen
			        String sensorLine = sensorData.substring(0, separatorIndex);
			        
			        // Überprüfe, ob die Zeile den Sensor enthält
			        int sensorIndex = sensorLine.indexOf("Sensor:");
			        if (sensorIndex != -1) {
			            // Extrahiere die Sensorinformationen und entferne sie aus der Zeile
			            String sensorInfo = sensorLine.substring(sensorIndex);
			            sensorLine = sensorLine.substring(0, sensorIndex);
			        }
			        
			        // Ausgabe des Werts (Value) aus der Zeile
			        String[] parts = sensorLine.split("VALUE: ");
			        if (parts.length > 1) {
			        	String valueLine = parts[1].trim();
						highestID++;
						statement.setInt(1, highestID);
						statement.setInt(2, station.getStationID());
						statement.setInt(3, rawList.get(index).getSensorId());
						statement.setInt(4, insertDataValue(connection, valueLine));	
						statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
						statement.executeUpdate();
						System.out.println("Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
						index++;
			        }
			        
			        // Lösche die verarbeitete Zeile aus dem StringBuilder
			        sensorData.delete(0, separatorIndex + 2);
			        
			        if (rawList.size() == index) {
						break;

					}
			    }
			}
		}
				
		
	}
	
	
	public static int insertDataValue(Connection connection, String rawValue) throws SQLException {
		String insertSql = "INSERT INTO datavalue (ValueID, Rohwert, BerechneterWert, Valid) VALUES (?, ?, ?, ?)";

		int maxValueID;
		try (PreparedStatement statement = connection.prepareStatement(insertSql)) {

			maxValueID = getHighestDatavalueID(connection);
			statement.setInt(1, maxValueID); // Verwende die Methode, um die nächste verfügbare ID zu erhalten
			statement.setString(2, rawValue);
			statement.setString(3, null);
			statement.setBoolean(4, true);
			statement.executeUpdate();

		}
		return maxValueID;
	}

	private static int getHighestcrawlerID(Connection connection) throws SQLException {
		String sql = "SELECT MAX(CrawlerID) AS MaxCrawlerID FROM datacrawl";
		try (PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			if (resultSet.next()) {
				return resultSet.getInt("MaxCrawlerID");
			} else {
				// If there are no records in the table yet
				return 0;
			}
		}
	}

	private static int getHighestDatavalueID(Connection connection) throws SQLException {
		String sql = "SELECT MAX(ValueID) AS MaxValueID FROM datavalue";
		try (PreparedStatement statement = connection.prepareStatement(sql);
				ResultSet resultSet = statement.executeQuery()) {
			if (resultSet.next()) {
				return resultSet.getInt("MaxValueID") + 1;
			} else {
				// If there are no records in the table yet
				return 0;
			}
		}
	}

}
