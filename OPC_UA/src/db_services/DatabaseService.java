package db_services;

import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import anlageObjekte.MySensor;
import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import enums.Stationen;

public class DatabaseService {


    public static Connection createConnection() throws SQLException {

        String connStr = "jdbc:mysql://localhost:3306/testdatenbank";
        return DriverManager.getConnection(connStr, "root", "");
    }


    public static List<MySensor> getSensorByStation(int stationID) throws SQLException {
        List<MySensor> sensors = new ArrayList<>();
        Connection connection = createConnection();
        String sql = "SELECT * FROM sensor WHERE StationID = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, stationID);
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


    public static void inserDataCrawler(Stationen station) throws Exception {

        // Sensorliste erstellen
        SensorList sensorlist = StationService.createSensorList(station.getStationID());
        List<MySensor> rawList = DatabaseService.getSensorByStation(station.getStationID());
        OPCClientETS.getInstance().connectToMachine(station.getStation());
        OPCClientETS.getInstance().setCrawlOffset(1000);
        OPCClientETS.getInstance().browseOPCServer(sensorlist);

        // InputStream erhalten
        InputStream in = OPCClientETS.getInstance().getInputStream();

        // Datenbankverbindung herstellen
        Connection connection = createConnection();

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
                statement.setInt(4, insertDataValue(connection, data));
                statement.setTimestamp(5, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
                statement.setString(6, data);
                statement.executeUpdate();
                index++;
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
