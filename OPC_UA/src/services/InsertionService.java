package services;

import java.io.InputStream;
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
	private Connection connection;

	public InsertionService(Connection connection) {
		super();
		this.connection = connection;
	}

	public void insertDataCrawler(MyStation myStation) throws Exception {
		// Sensorliste erstellen
		SensorList sensorlist = myStation.getSensorList();
		List<MySensor> mySensorList = myStation.getMySensorList();
		OPCClientETS.getInstance().connectToMachine(myStation.getStation().getStation());
		OPCClientETS.getInstance().setCrawlOffset(1000);
		OPCClientETS.getInstance().browseOPCServer(sensorlist);
		// Prepared Statement zum Einfügen von Daten erstellen
		String insertSql = "INSERT INTO datacrawl (CrawlerID, StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?, ?)";
		try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
			byte[] buffer = new byte[1024];
			int highestID = getHighestcrawlerID(connection);

			while (true) {
				// InputStream erhalten
				InputStream in = OPCClientETS.getInstance().getInputStream();

				// Lese Daten in den Puffer
				int bytesRead = in.read(buffer);
				if (bytesRead == -1) {
					// Wenn das Ende des Streams erreicht ist, warten Sie kurz und fahren Sie fort
					Thread.sleep(1000); // Warten Sie eine Sekunde und versuchen Sie es erneut
					continue;
				}

				// Daten in String umwandeln
				String data = new String(buffer, 0, bytesRead);

				// Teile den empfangenen String in Zeilen auf
				String[] lines = data.split("\r\n|\r|\n");

				for (String line : lines) {
					// Überprüfe, ob die Zeile den Sensor enthält
					if (line.contains("Sensor:")) {
						// Extrahiere die Sensorinformationen und entferne sie aus der Zeile
						String sensorInfo = line.substring(line.indexOf("Sensor:"));
						line = line.substring(0, line.indexOf("Sensor:"));
					}

					// Ausgabe des Werts (Value) aus der Zeile
					if (line.contains("VALUE:")) {
						String valueLine = line.split("VALUE: ")[1].trim();
						highestID++;
						statement.setInt(1, highestID);
						statement.setInt(2, myStation.getStation().getStationID());
						statement.setInt(3, mySensorList.get(0).getSensorId()); // Verwenden Sie immer den ersten Sensor													// in der Liste
						statement.setInt(4, insertDataValueManuellID(connection, valueLine));
						statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
						statement.executeUpdate();
						System.out.println(
								"Erfolgreich zur Datenbank hinzugefügt: " + mySensorList.get(0).getBrowseName());
					}
				}
			}
		} finally {
			OPCClientETS.getInstance().disconnect();
		}
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
