package deprecated;

import de.judge.opc_ets.SensorList;
import enums.Stations;
import models.MySensor;
import models.MyStation;
import services.DatabaseService;

import java.sql.SQLException;
import java.util.List;

@Deprecated
public class OldMyStationService {

    public static void persistDatacrawl(MyStation myStation) throws Exception {
        DatabaseService.persistDatacrawl(myStation);
    }

    public static List<MySensor> createMySensorList(Stations station) throws SQLException {
        return DatabaseService.getMySensorList(station);

    }


    public static SensorList createSensorList(Stations station) throws SQLException {
        List<MySensor> sensorObjects = DatabaseService.getMySensorList(station);
        SensorList list = new SensorList();

        for (MySensor sensorObj : sensorObjects) {
            list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
        }
        return list;
    }

    public static SensorList createSensorListForOne(int id) throws SQLException {
        List<MySensor> sensorObjects = OldDatabaseService.getSensorById(id);
        SensorList list = new SensorList();

        for (MySensor sensorObj : sensorObjects) {
            list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
        }
        return list;
    }

}