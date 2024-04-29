package services;

import de.judge.opc_ets.SensorList;
import enums.Stations;
import models.MySensor;
import models.MyStation;

import java.sql.SQLException;
import java.util.List;

public class MyStationService {

    public static final DatabaseService DATABASE_SERVICE = new DatabaseService();

    public static void persistDatacrawl(MyStation myStation) throws Exception {
        DATABASE_SERVICE.persistDatacrawl(myStation);
    }

    public static List<MySensor> createMySensorList(Stations station) throws SQLException {
        return DATABASE_SERVICE.getMySensorList(station);

    }


    public static SensorList createSensorList(Stations station) throws SQLException {
        List<MySensor> sensorObjects = DatabaseService.getMySensorList(station);
        SensorList list = new SensorList();

        for (MySensor sensorObj : sensorObjects) {
            list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
        }
        return list;
    }
}