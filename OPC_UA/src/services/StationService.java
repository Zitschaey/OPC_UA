package services;

import java.sql.SQLException;
import java.util.List;


import de.judge.opc_ets.SensorList;
import enums.Stationen;
import models.MySensor;

public class StationService {

	public static SensorList createSensorList(Stationen station) throws SQLException {
		List<MySensor> sensorObjects = DatabaseService.getMySensorList(station);
		SensorList list = new SensorList();

		for (MySensor sensorObj : sensorObjects) {
			list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
		}
		return list;
	}

	public static SensorList createSensorListForOne(int id) throws SQLException {
		List<MySensor> sensorObjects = DatabaseService.getSensorById(id);
		SensorList list = new SensorList();

		for (MySensor sensorObj : sensorObjects) {
			list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
		}
		return list;
	}

}
