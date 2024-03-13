package db_services;

import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;


import anlageObjekte.MySensor;
import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import enums.Stationen;

public class StationService {

public static void createConnection(Stationen station) throws Exception {
	
	SensorList sensorlist = createSensorList(station);
	OPCClientETS.getInstance().connectToMachine(station.getStation());
	OPCClientETS.getInstance().setCrawlOffset(1000);
	OPCClientETS.getInstance().browseOPCServer(sensorlist);

	InputStream in = OPCClientETS.getInstance().getInputStream();

		byte[] buffer = new byte[50000];
		int bytesRead;
		while ((bytesRead = in.read(buffer)) != -1) {
			String data = new String(buffer, 0, bytesRead);
			System.out.println(data + "\n");
		}
	
	OPCClientETS.getInstance().disconnect();
}

public static SensorList createSensorList(Stationen station) throws SQLException {
List<MySensor> sensorObjects = DatabaseService.getSensorByStation(station);
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
