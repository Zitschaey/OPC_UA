package services;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import enums.Stationen;
import models.MySensor;
import models.MyStation;

public class InsertionService {
	

	public InsertionService() {
		super();
	}

	public static void inserDataCrawler(Stationen station) throws Exception {
		Connection connection =  DatabaseService.createConnection();
	    // Sensorliste erstellen
	    SensorList sensorlist = StationService.createSensorList(station);
	    List<MySensor> rawList = DatabaseService.getSensorByStation(station);
	    OPCClientETS.getInstance().connectToMachine(station.getStation());
	    OPCClientETS.getInstance().setCrawlOffset(1000);
	    OPCClientETS.getInstance().browseOPCServer(sensorlist);

	    // BufferedReader erhalten
	    BufferedReader reader = new BufferedReader(new InputStreamReader(OPCClientETS.getInstance().getInputStream()));

	    // Datenbankverbindung herstellen

	    // Prepared Statement zum Einfügen von Daten erstellen
	    String insertSql = "INSERT INTO datacrawl (CrawlerID, StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?, ?)";
	    try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
	        int highestID = getHighestcrawlerID(connection);

	        String line;
	        int index = 0;

	        while ((line = reader.readLine()) != null) {
	            // Suche nach "--" als Trennzeichen
	            if (line.startsWith("--")) {
	                // Extrahiere die Zeile bis zum Trennzeichen
	                String sensorLine = line.substring(2);

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
	                    statement.setInt(4, insertDataValueManuellID(connection, valueLine));
	                    statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
	                    statement.executeUpdate();
	                    System.out.println(
	                            "Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
	                    index++;
	                }
	            }

	            if (rawList.size() == index) {
	                break;
	            }
	        }
	    }
	    OPCClientETS.getInstance().disconnect();
	}

	public static int insertDataValueManuellID(Connection connection, String rawValue) throws SQLException {
		String insertSql = "INSERT INTO datavalue (ValueID, Rohwert, BerechneterWert, Valid) VALUES (?, ?, ?, ?)";

		int maxValueID;
		try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
			maxValueID = getNextDataValueID(connection) - 1;
			statement.setInt(1, maxValueID); // Verwende die Methode, um die nächste verfügbare ID zu erhalten
			statement.setString(2, rawValue);
			statement.setString(3, null);
			statement.setBoolean(4, true);
			statement.executeUpdate();
		}
		return maxValueID;
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

	private static synchronized int getNextCrawlerID(Connection connection) throws SQLException {
		int highestID = getHighestcrawlerID(connection);
		return highestID + 1;
	}

	private static synchronized int getNextDataValueID(Connection connection) throws SQLException {
		int highestID = getHighestDatavalueID(connection);
		return highestID + 1;
	}

}
