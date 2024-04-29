package services;

import database_managment.DatabaseConnectionManager;
import de.judge.opc_ets.OPCClientETS;
import enums.Stationen;
import models.MySensor;
import models.MyStation;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DatabaseService {

    public static final DatabaseConnectionManager DATABASE_CONNECTION_MANAGER = new DatabaseConnectionManager();
    public static final FilterService FILTER_SERVICE = new FilterService();

    public static void persistDatacrawl(MyStation myStation) throws Exception {
        var connection = DATABASE_CONNECTION_MANAGER.createConnection();
        var sensorlist = myStation.getSensorList();
        var rawList = myStation.getMySensorList();
        OPCClientETS opcClient = new OPCClientETS(myStation.getStation().getStation());
        opcClient.setCrawlOffset(0);
        opcClient.browseOPCServer(sensorlist);

    
        var in = opcClient.getInputStream();

       
        var insertSql = "INSERT INTO datacrawl (StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
          
            connection.setAutoCommit(false);

            var reader = new BufferedReader(new InputStreamReader(in));
            String line;
            var index = 0;
            var batchSize = 100;

            while ((line = reader.readLine()) != null) {
                
                if (line.contains("VALUE: DataValue")) {
                   
                    String valueLine = line.substring(line.indexOf("VALUE:")).trim();

                    statement.setInt(1, myStation.getStation().getStationID());
                    statement.setInt(2, rawList.get(index).getSensorId());
                    statement.setInt(3, persistDatavalue(valueLine, connection));
                    statement.setTimestamp(4, new Timestamp(System.currentTimeMillis())); 
                    statement.addBatch();

                    System.out.println(
                            "Datensatz hinzugefügt zur Batch-Operation: " + rawList.get(index).getBrowseName());

                    index++;

                 
                    if (index % batchSize == 0 || index == rawList.size()) {
                        statement.executeBatch();
                        connection.commit();
                        statement.clearBatch();
                        System.out
                                .println("Batch-Operation ausgeführt, für die Anlage: " + myStation.getStation().getStation().getID());
                    }

                  
                    if (index == rawList.size()) {
                        index = 0;
                    }
                }
            }
        } catch (SQLException e) {
           
            connection.rollback();
            throw e;
        } finally {
           
            connection.setAutoCommit(true);
            opcClient.getInstance().disconnect();
            connection.close();
        }
    }

    public static int persistDatavalue(String rawValue, Connection connection) throws SQLException {
        var insertSql = "INSERT INTO datavalue (Rohwert, BerechneterWert, Valid) VALUES (?, ?, ?)";

        var filteredValue = FILTER_SERVICE.filterDataValue(rawValue);

        var maxValueID = -1; 
        try (PreparedStatement statement = connection.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, filteredValue);
            statement.setString(2, null);
            statement.setBoolean(3, true);
            statement.executeUpdate();

          
            try (var generatedKeys = statement.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    maxValueID = generatedKeys.getInt(1); 
                } else {
                    throw new SQLException("Fehler beim Abrufen der generierten ID für DataValue.");
                }
            }
        }
        return maxValueID;
    }

    public static List<MySensor> getMySensorList(Stationen station) throws SQLException {
        List<MySensor> mySensorList = new ArrayList<>();
        var connection = DATABASE_CONNECTION_MANAGER.createConnection();
        var sql = "SELECT * FROM sensor WHERE StationID = ?";
        try (var statement = connection.prepareStatement(sql)) {
            statement.setInt(1, station.getStationID());
            try (var resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    var mySensor = new MySensor();
                    mySensor.setBrowseName(resultSet.getString("AnzeigeName"));
                    mySensor.setNodeId(resultSet.getInt("KnotenId"));
                    mySensor.setSensorId(resultSet.getInt("SensorId"));
                    mySensorList.add(mySensor);
                }
                return mySensorList;
            }
        }
    }
}
