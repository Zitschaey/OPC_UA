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

    public static void persistDatacrawl(MyStation myStation) throws Exception {
        var connection = DATABASE_CONNECTION_MANAGER.createConnection();
        var sensorlist = myStation.getSensorList();
        var rawList = myStation.getMySensorList();
        OPCClientETS opcClient = new OPCClientETS(myStation.getStation().getStation());
        opcClient.setCrawlOffset(0);
        opcClient.browseOPCServer(sensorlist);

        // InputStream erhalten
        var in = opcClient.getInputStream();

        // Prepared Statement zum Einfügen von Daten erstellen
        var insertSql = "INSERT INTO datacrawl (StationID, SensorID, ValueID, Uhrzeit) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(insertSql)) {
            // Starte eine Transaktion
            connection.setAutoCommit(false);

            var reader = new BufferedReader(new InputStreamReader(in));
            String line;
            var index = 0;
            var batchSize = 100;

            while ((line = reader.readLine()) != null) {
                // Filtern nach Zeilen, die "VALUE: DataValue" enthalten
                if (line.contains("VALUE: DataValue")) {
                    // Hier kannst du die Verarbeitung der Zeile vornehmen
                    String valueLine = line.substring(line.indexOf("VALUE:")).trim();

                    statement.setInt(1, myStation.getStation().getStationID());
                    statement.setInt(2, rawList.get(index).getSensorId());
                    statement.setInt(3, persistDatavalue(valueLine, connection));
                    statement.setTimestamp(4, new Timestamp(System.currentTimeMillis())); // Aktuelle Uhrzeit
                    statement.addBatch();

                    System.out.println(
                            "Datensatz hinzugefügt zur Batch-Operation: " + rawList.get(index).getBrowseName());

                    index++;

                    // Wenn die Batch-Größe erreicht ist oder alle Sensoren durchlaufen sind, führe
                    // die Batch-Operation aus und leere sie
                    if (index % batchSize == 0 || index == rawList.size()) {
                        statement.executeBatch();
                        connection.commit(); // Bestätige die Transaktion
                        statement.clearBatch();
                        System.out
                                .println("Batch-Operation ausgeführt, für die Anlage: " + myStation.getStation().getStation().getID());
                    }

                    // Wenn alle Sensoren durchlaufen sind, setze den Index zurück und breche die
                    // innere Schleife ab
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

            opcClient.getInstance().disconnect();
            connection.close();
        }
    }

    public static int persistDatavalue(String rawValue, Connection connection) throws SQLException {
        var insertSql = "INSERT INTO datavalue (Rohwert, BerechneterWert, Valid) VALUES (?, ?, ?)";

        var filteredValue = FilterService.filterDataValue(rawValue);

        var maxValueID = -1; // Standardwert für den Fall, dass keine ID generiert wird
        try (PreparedStatement statement = connection.prepareStatement(insertSql, Statement.RETURN_GENERATED_KEYS)) {
            statement.setString(1, filteredValue);
            statement.setString(2, null);
            statement.setBoolean(3, true);
            statement.executeUpdate();

            // Holen Sie sich die generierten Schlüssel
            try (var generatedKeys = statement.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    maxValueID = generatedKeys.getInt(1); // Erste Spalte enthält den generierten Schlüsselwert
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
