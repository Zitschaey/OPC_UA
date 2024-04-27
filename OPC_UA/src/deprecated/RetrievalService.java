package deprecated;

import java.sql.*;


/**
 * Deprecated because of Auto Increment in the Database
 */

@Deprecated
public class RetrievalService {


    @Deprecated
    public static int getHighestcrawlerID(Connection connection) throws SQLException {
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


    @Deprecated
    public static int getHighestDatavalueID(Connection connection) throws SQLException {
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

    @Deprecated
    public static int getHighestSensorID(Connection connection) throws SQLException {
        int highestSensorID = 0;
        String query = "SELECT MAX(SensorID) AS HighestID FROM sensor";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(query);
        if (resultSet.next()) {
            highestSensorID = resultSet.getInt("HighestID");
        }
        return highestSensorID;
    }

    @Deprecated
    public static synchronized int getNextCrawlerID(Connection connection) throws SQLException {
        int highestID = getHighestcrawlerID(connection);
        return highestID + 1;
    }


    @Deprecated
    public static synchronized int getNextDataValueID(Connection connection) throws SQLException {
        int highestID = getHighestDatavalueID(connection);
        return highestID + 1;
    }

}
