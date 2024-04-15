package services;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import enums.Stationen;
import models.MySensor;

public class DatabaseService {

	public static Connection createConnection()  {

		String connStr = "jdbc:mysql://localhost:3306/testdatenbank";
		try {
			return DriverManager.getConnection(connStr, "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
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

	public static void consoleMachine(Stationen station ) throws Exception {

		   // Sensorliste erstellen
	    SensorList sensorlist = StationService.createSensorList(station);
	    List<MySensor> rawList = DatabaseService.getSensorByStation(station);
	    OPCClientETS.getInstance().connectToMachine(station.getStation());
	    OPCClientETS.getInstance().setCrawlOffset(500);
	    OPCClientETS.getInstance().browseOPCServer(sensorlist);

	    // InputStream erhalten
	    InputStream in = OPCClientETS.getInstance().getInputStream();

	    // Datenbankverbindung herstellen
	    Connection connection = createConnection();

	    // Prepared Statement zum Einfügen von Daten erstellen
	    String insertSql = "INSERT INTO datacrawl (CrawlerID, StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?, ?)";
	    try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
	        BufferedReader reader = new BufferedReader(new InputStreamReader(in));
	        String line;
	        int index = 0;
	        int highestID = getHighestcrawlerID(connection);

	        while ((line = reader.readLine()) != null) {
	            // Filtern nach Zeilen, die "VALUE: DataValue" enthalten
	            if (line.contains("VALUE: DataValue")) {
	                // Hier kannst du die Verarbeitung der Zeile vornehmen
	                String valueLine = line.substring(line.indexOf("VALUE:")).trim();
	                highestID++;
	                statement.setInt(1, highestID);
	                statement.setInt(2, station.getStationID());
	                statement.setInt(3, rawList.get(index).getSensorId());
	                statement.setInt(4, insertDataValueManuellID(connection, valueLine));
	                statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
	                statement.executeUpdate();
	                System.out.println("Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
	                index++;
	                // Wenn alle Sensoren durchlaufen sind, setze den Index zurück und breche die innere Schleife ab
                    if (index == rawList.size()) {
                        index = 0;
                    }
	            }
	        }
	    } finally {
	        OPCClientETS.getInstance().disconnect();
	        connection.close();
	    }
	}
	
	public static void consoleMachine(Stationen station, Connection connection) throws Exception {

	    // Sensorliste erstellen
	    SensorList sensorlist = StationService.createSensorList(station);
	    List<MySensor> rawList = DatabaseService.getSensorByStation(station);
	    OPCClientETS.getInstance().connectToMachine(station.getStation());
	    OPCClientETS.getInstance().setCrawlOffset(500);
	    OPCClientETS.getInstance().browseOPCServer(sensorlist);

	    // InputStream erhalten
	    InputStream in = OPCClientETS.getInstance().getInputStream();

	    // Prepared Statement zum Einfügen von Daten erstellen
	    String insertSql = "INSERT INTO datacrawl (StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?)";
	    try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
	        // Starte eine Transaktion
	        connection.setAutoCommit(false);

	        BufferedReader reader = new BufferedReader(new InputStreamReader(in));
	        String line;
	        int index = 0;
	        int batchSize = 100; // Definiere die Batch-Größe

	        while ((line = reader.readLine()) != null) {
	            // Filtern nach Zeilen, die "VALUE: DataValue" enthalten
	            if (line.contains("VALUE: DataValue")) {
	                // Hier kannst du die Verarbeitung der Zeile vornehmen
	                String valueLine = line.substring(line.indexOf("VALUE:")).trim();

	                statement.setInt(1, station.getStationID());
	                statement.setInt(2, rawList.get(index).getSensorId());
	                statement.setInt(3, dataValueTrial(connection, valueLine));
	                statement.setTimestamp(4, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
	                statement.addBatch();

	                System.out.println("Datensatz hinzugefügt zur Batch-Operation: " + rawList.get(index).getBrowseName());

	                index++;

	                // Wenn die Batch-Größe erreicht ist oder alle Sensoren durchlaufen sind, führe die Batch-Operation aus und leere sie
	                if (index % batchSize == 0 || index == rawList.size()) {
	                    statement.executeBatch();
	                    connection.commit(); // Bestätige die Transaktion
	                    statement.clearBatch();
	                    System.out.println("Batch-Operation ausgeführt, für die Anlage: " + station.getStation().getID() );
	                }

	                // Wenn alle Sensoren durchlaufen sind, setze den Index zurück und breche die innere Schleife ab
	                if (index == rawList.size()) {
	                    index = 0;
	                }
	            }
	        }
	    } catch (SQLException e) {
	        // Bei Fehler Rollback der Transaktion
	        connection.rollback();
	        throw e;
	    } finally {
	        // Setze den Autocommit-Modus wieder auf true
	        connection.setAutoCommit(true);

	        OPCClientETS.getInstance().disconnect();
	        connection.close();
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
			int highestID = getNextCrawlerID(connection);

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
						statement.addBatch();
						statement.executeUpdate();
						System.out.println(
								"Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
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
		OPCClientETS.getInstance().disconnect();
	}
	public static void inserDataCrawler(Stationen station, Connection connection) throws Exception {
	    // Sensorliste erstellen
	    SensorList sensorlist = StationService.createSensorList(station);
	    List<MySensor> rawList = DatabaseService.getSensorByStation(station);
	    OPCClientETS.getInstance().connectToMachine(station.getStation());
	    OPCClientETS.getInstance().setCrawlOffset(1000);
	    OPCClientETS.getInstance().browseOPCServer(sensorlist);

	    // InputStream erhalten
	    InputStream in = OPCClientETS.getInstance().getInputStream();

	    // Prepared Statement zum Einfügen von Daten erstellen
	    String insertSql = "INSERT INTO datacrawl (StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?)";
	    try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
	        StringBuilder sensorData = new StringBuilder();
	        byte[] buffer = new byte[1024];
	        int index = 0;
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
	                    statement.setInt(1, station.getStationID());
	                    statement.setInt(2, rawList.get(index).getSensorId());
	                    statement.setInt(3, insertDataValue(connection, valueLine));
	                    statement.setTimestamp(4, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
	                    statement.executeUpdate();
	                    System.out.println(
	                            "Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
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
						statement.setInt(4, insertDataValueManuellID(connection, valueLine));
						statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
						statement.executeUpdate();
						System.out.println(
								"Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
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
		OPCClientETS.getInstance().disconnect();

	}
	
	public static void inserDataCrawlerEternal(Stationen station) throws Exception {

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
	        int highestID = getHighestcrawlerID(connection);

	        while (true) { // Unendliche Schleife
	            int bytesRead = in.read(buffer);
	            if (bytesRead == -1) { // Überprüfen, ob das Ende des Streams erreicht wurde
	                break; // Wenn ja, die Schleife verlassen
	            }
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
	                    System.out.println(
	                            "Erfolgreich zur Datenbank hinzugefügt: " + rawList.get(index).getBrowseName());
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
	    OPCClientETS.getInstance().disconnect();
	}


	public static int insertDataValue(Connection connection, String rawValue) throws SQLException {
	    String insertSql = "INSERT INTO datavalue (Rohwert, BerechneterWert, Valid) VALUES (?, ?, ?)";

	    int generatedValueID;
	    try (PreparedStatement statement = connection.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS)) {
	        statement.setString(1, rawValue);
	        statement.setString(2, null);
	        statement.setBoolean(3, true);
	        statement.executeUpdate();

	        // Abrufen der automatisch generierten ValueID
	        try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	                generatedValueID = generatedKeys.getInt(1);
	            } else {
	                throw new SQLException("Failed to retrieve generated ValueID.");
	            }
	        }
	    }

	    return generatedValueID;
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
	
	public static int dataValueTrial(Connection connection, String rawValue) throws SQLException {
	    String insertSql = "INSERT INTO datavalue (Rohwert, BerechneterWert, Valid) VALUES (?, ?, ?)";

	    int maxValueID = -1; // Standardwert für den Fall, dass keine ID generiert wird
	    try (PreparedStatement statement = connection.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS)) {
	        statement.setString(1, rawValue);
	        statement.setString(2, null);
	        statement.setBoolean(3, true);
	        statement.executeUpdate();

	        // Holen Sie sich die generierten Schlüssel
	        try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
	            if (generatedKeys.next()) {
	                maxValueID = generatedKeys.getInt(1); // Erste Spalte enthält den generierten Schlüsselwert
	            } else {
	                throw new SQLException("Fehler beim Abrufen der generierten ID für DataValue.");
	            }
	        }
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

	public static void insertSensorDataIntoDatabase(String filePath, int stationID) {
		MySensor extractor = new MySensor();
		List<MySensor> sensorObjects = extractor.createSensorObjectsFromFile(filePath);

		try (Connection connection = createConnection()) {
			String sql = "INSERT INTO sensor (SensorID, SensorTypID, StationID, AnzeigeName, KnotenId) VALUES (?, ?, ?, ?, ?)";
			PreparedStatement statement = connection.prepareStatement(sql);
			int highestSensorID = getHighestSensorID(connection);

			for (MySensor sensorObj : sensorObjects) {
				highestSensorID++;
				statement.setInt(1, highestSensorID);
				statement.setNull(2, java.sql.Types.INTEGER);
				statement.setInt(3, stationID);
				statement.setString(4, sensorObj.getBrowseName());
				statement.setInt(5, sensorObj.getNodeId());

				statement.executeUpdate();
				System.out.println("Neuer Sensor wurde hinzugefügt mit SensorID: " + highestSensorID);
			}

			System.out.println("Daten wurden erfolgreich hinzugefügt.");
		} catch (SQLException e) {
			System.err.println("Fehler beim Hinzufügen der Daten: " + e.getMessage());
		}
	}

	private static int getHighestSensorID(Connection connection) throws SQLException {
		int highestSensorID = 0;
		String query = "SELECT MAX(SensorID) AS HighestID FROM sensor";
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(query);
		if (resultSet.next()) {
			highestSensorID = resultSet.getInt("HighestID");
		}
		return highestSensorID;
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
