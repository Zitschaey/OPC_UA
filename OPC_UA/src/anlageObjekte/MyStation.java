package anlageObjekte;

import java.util.ArrayList;

import de.judge.opc_ets.Station;

public class MyStation {

	private String stationName;
	private Station station;
	private int stationsId;
	private Anlage anlage;
	private ArrayList<Alarm> alarms;
	private ArrayList<MySensor> sensors;

	public MyStation(String stationName, Station station, int stationsId, Anlage anlage, ArrayList<Alarm> alarms,
			ArrayList<MySensor> sensors) {
		super();
		this.stationName = stationName;
		this.station = station;
		this.stationsId = stationsId;
		this.anlage = anlage;
		this.alarms = alarms;
		this.sensors = sensors;
	}

	public MyStation(String stationName, Station station, Anlage anlage) {
		super();
		this.stationName = stationName;
		this.anlage = anlage;
		this.station = station;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public int getStationsId() {
		return stationsId;
	}

	public void setStationsId(int stationsId) {
		this.stationsId = stationsId;
	}

	public Anlage getAnlage() {
		return anlage;
	}

	public void setAnlage(Anlage anlage) {
		this.anlage = anlage;
	}

	public ArrayList<Alarm> getAlarms() {
		return alarms;
	}

	public void setAlarms(ArrayList<Alarm> alarms) {
		this.alarms = alarms;
	}

	public ArrayList<MySensor> getSensors() {
		return sensors;
	}

	public void setSensors(ArrayList<MySensor> sensors) {
		this.sensors = sensors;
	}

	public void addSensor(MySensor sensor) {
		sensors.add(sensor);
	}

	public void addSensor(Alarm alarm) {
		alarms.add(alarm);
	}

}
