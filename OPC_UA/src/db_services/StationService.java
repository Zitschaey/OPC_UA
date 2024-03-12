package db_services;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

import anlageObjekte.MySensor;
import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;
import enums.Stationen;

public class StationService {
	


	public static void inserDataCrawler(Stationen station) throws Exception {
		
	    // Sensorliste erstellen
        SensorList sensorlist = createSensorList(station.getStationID());
        List<MySensor> rawList = DatabaseService.getSensorByStation(station.getStationID());
        OPCClientETS.getInstance().connectToMachine(station.getStation());
        OPCClientETS.getInstance().setCrawlOffset(1000);
        OPCClientETS.getInstance().browseOPCServer(sensorlist);

        // InputStream erhalten
        InputStream in = OPCClientETS.getInstance().getInputStream();

        // Datenbankverbindung herstellen
        Connection connection = DatabaseService.createConnection();

        // Prepared Statement zum Einfügen von Daten erstellen
        String insertSql = "INSERT INTO datacrawl (CrawlerID, StationID, SensorID, ValueID, Uhrzeit, rawValue) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
            byte[] buffer = new byte[1024];
            int index = 0;
            int bytesRead;
            int highestID = getHighestcrawlerID(connection);
            while ((bytesRead = in.read(buffer)) != -1) {
            	highestID++;
               
                String data = new String(buffer, 0, bytesRead);

                statement.setInt(1, highestID);
                statement.setInt(2, station.getStationID());
                statement.setInt(3, rawList.get(index).getSensorId());
                statement.setTimestamp(4, null);
                statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
                statement.setString(6, data);
                statement.executeUpdate();
                index++;
            }
        }
	}
	
public static void createConnection(Stationen station) throws Exception {
	
	SensorList sensorlist = createSensorList(station.getStationID());
	OPCClientETS.getInstance().connectToMachine(station.getStation());
	OPCClientETS.getInstance().setCrawlOffset(1000);
	OPCClientETS.getInstance().browseOPCServer(sensorlist);

	InputStream in = OPCClientETS.getInstance().getInputStream();

		byte[] buffer = new byte[50000];
		int bytesRead;
		while ((bytesRead = in.read(buffer)) != -1) {
			String data = new String(buffer, 0, bytesRead);
			System.out.println(data + "\n");
		}
	
	OPCClientETS.getInstance().disconnect();
}

public static SensorList createSensorList(int stationId) throws SQLException {
List<MySensor> sensorObjects = DatabaseService.getSensorByStation(stationId);
SensorList list = new SensorList();

for (MySensor sensorObj : sensorObjects) {
	list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
}
return list;
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

}
