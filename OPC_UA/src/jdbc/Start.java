package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import anlageObjekte.MySensor;
import de.judge.opc_ets.SensorList;

public class Start {

    public static void main(String[] args) {
        String connStr = "jdbc:mysql://localhost:3306/testdatenbank";

        MySensor extractor = new MySensor();

        final String filePath = "OutputRL_FILTERED_ATTRIBUTES.txt";
        List<MySensor> sensorObjects = extractor.createSensorObjectsFromFile(filePath);

        try (Connection connection = DriverManager.getConnection(connStr, "root", "")) {
            // Prepare a SQL statement for inserting sensor data
            String sql = "INSERT INTO sensor (SensorID, SensorTypID, StationID, AnzeigeName, KnotenId) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);

            // Fetch the highest SensorID from the database
            int highestSensorID = getHighestSensorID(connection);

            // Loop through the sensor objects and insert them into the database
            for (MySensor sensorObj : sensorObjects) {
                highestSensorID++; // Increment the SensorID
                statement.setInt(1, highestSensorID);
                statement.setNull(2, java.sql.Types.INTEGER); // Assuming SensorTypID is nullable
                statement.setInt(3, 5); // Set StationID to "BF"
                statement.setString(4, sensorObj.getBrowseName()); // Assuming you have a method to get display name
                statement.setInt(5, sensorObj.getNodeId()); // Assuming you have a method to get node ID

                // Execute the SQL statement
                statement.executeUpdate();
                System.out.println("Neuer Sensor wurde hinzugefügt mit SensorID: " + highestSensorID);
            }

            System.out.println("Daten wurden erfolgreich hinzugefügt.");
        } catch (SQLException e) {
            System.err.println("Fehler beim Hinzufügen der Daten: " + e.getMessage());
        }
    }

    // Helper method to get the highest SensorID from the database
    private static int getHighestSensorID(Connection connection) throws SQLException {
        String sql = "SELECT MAX(SensorID) AS MaxSensorID FROM sensor";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            if (resultSet.next()) {
                return resultSet.getInt("MaxSensorID");
            } else {
                // If there are no records in the table yet
                return 0;
            }
        }
    }
}
