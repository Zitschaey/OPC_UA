package services;

import de.judge.opc_ets.SensorList;
import enums.Stationen;
import models.MySensor;
import models.MyStation;

import java.sql.SQLException;
import java.util.List;

public class MyStationService {

    public static void persistDatacrawl(MyStation myStation) throws Exception {
        DatabaseService.persistDatacrawl(myStation);
    }

    public static List<MySensor> createMySensorList(Stationen station) throws SQLException {
        return DatabaseService.getMySensorList(station);

    }


    public static SensorList createSensorList(Stationen station) throws SQLException {
        List<MySensor> sensorObjects = DatabaseService.getMySensorList(station);
        SensorList list = new SensorList();

        for (MySensor sensorObj : sensorObjects) {
            list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
        }
        return list;
    }
}