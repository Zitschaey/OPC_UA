package services;

import database_managment.DatabaseConnectionManager;
import de.judge.opc_ets.OPCClientETS;
import enums.Stations;
import mapper.AlarmMapper;
import models.Alarm;
import models.MySensor;
import models.MyStation;
import request.AlarmGet;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class DatabaseService {

    public static final DatabaseConnectionManager DATABASE_CONNECTION_MANAGER = new DatabaseConnectionManager();
    public static final FilterService FILTER_SERVICE = new FilterService();
    
    
    public static void main(String[] args) {
    	insertAlarms();
	}

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

    public static List<MySensor> getMySensorList(Stations station) throws SQLException {

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
    public static void insertAlarms() {
    	List<Alarm> alarms = AlarmMapper.mapJsonToAlarms(AlarmGet.getAlarms());
        String insertSql = "INSERT INTO alarm (StationID, Fehlermeldung, ErrorCode, istAktiv) VALUES (?, ?, ?, ?)";
        String updateSql = "UPDATE alarm SET istAktiv = false WHERE AlarmID = ?";

        try (Connection conn = DATABASE_CONNECTION_MANAGER.createConnection()) {
            Map<String, Alarm> existingAlarms = getActiveAlarms(conn);
            

            for (Alarm alarm : alarms) {
                String key = generateKey(alarm);

                if (existingAlarms.containsKey(key) && existingAlarms.get(key).isActive() == alarm.isActive()) {
                    System.out.println("Der Alarm mit Fehlermeldung '" + alarm.getErrorMessage() + "', Error Code '" +
                            alarm.getErrorCode() + "' und Station ID '" + alarm.getStation().getStationID() +
                            "' ist bereits vorhanden und aktiv.");
                } else {
                    try (PreparedStatement insertStmt = conn.prepareStatement(insertSql);
                         PreparedStatement updateStmt = conn.prepareStatement(updateSql)) {

                        conn.setAutoCommit(false); // Start transaction

                        // Deactivate existing alarms with the same StationID
                        for (Alarm existingAlarm : existingAlarms.values()) {
                        	System.out.println(existingAlarm.getStation().getStationID() + alarm.getStation().getStationID() );
                            if (existingAlarm.getStation().getStationID() == alarm.getStation().getStationID()) {
                            	System.out.println("Alarm deaktiviert.");
                                updateStmt.setInt(1, existingAlarm.getAlarmID());
                                updateStmt.executeUpdate();
                            }
                        }

                        // Insert new alarm
                        insertStmt.setInt(1, alarm.getStation().getStationID());
                        insertStmt.setString(2, alarm.getErrorMessage());
                        insertStmt.setInt(3, alarm.getErrorCode());
                        insertStmt.setBoolean(4, alarm.isActive());
                        insertStmt.executeUpdate();

                        conn.commit(); // Commit transaction
                    } catch (SQLException e) {
                        conn.rollback(); // Rollback transaction if an error occurs
                        e.printStackTrace();
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static Map<String, Alarm> getActiveAlarms(Connection conn) throws SQLException {
        String sql = "SELECT AlarmID, StationID, Fehlermeldung, ErrorCode, istAktiv FROM alarm WHERE istAktiv = true";
        Map<String, Alarm> alarms = new HashMap<>();

        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Alarm alarm = new Alarm();
                alarm.setAlarmID(rs.getInt("AlarmID"));
                alarm.setErrorMessage(rs.getString("Fehlermeldung"));
                alarm.setErrorCode(rs.getInt("ErrorCode"));
                alarm.setActive(rs.getBoolean("istAktiv"));
                alarm.setStation(getStationById(rs.getInt("StationID")));
                
                System.out.println(getStationById(2));
                alarms.put(generateKey(alarm), alarm);
            }
        }
        return alarms;
    }

    private static Stations getStationById(int stationID) {
        for (Stations station : Stations.values()) {
            if (station.getStationID() == stationID) {
                return station;
            }
        }
        return null; // oder wirf eine Ausnahme, falls die Station nicht gefunden wird
    }

    private static String generateKey(Alarm alarm) {
        return alarm.getStation().getStationID() + "|" + alarm.getErrorMessage() + "|" + alarm.getErrorCode();
    }
}

       
