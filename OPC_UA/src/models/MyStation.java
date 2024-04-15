package models;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;
import enums.Stationen;
import services.DatabaseService;
import services.InsertionService;
import services.StationService;

public abstract class MyStation {

	protected Stationen station;
	protected String bezeichnung;
	protected Anlage anlage;
	protected ArrayList<Alarm> alarms;
	protected SensorList sensorList;
	protected  List<MySensor> mySensorList;
	
	private InsertionService insertionService = new InsertionService();
	
	
	protected MyStation(Stationen station ) {
		super();
		this.station = station;
		this.bezeichnung = station.getStation().getID();
		try {
			this.sensorList =  StationService.createSensorList(station);
			this.mySensorList = DatabaseService.getSensorByStation(station);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	public void startDatacrawl() throws Exception {
	}

	public Stationen getStation() {
		return station;
	}

	public void setStation(Stationen station) {
		this.station = station;
	}

	public String getBezeichnung() {
		return bezeichnung;
	}

	public void setBezeichnung(String bezeichnung) {
		this.bezeichnung = bezeichnung;
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

	public void addSensor(Alarm alarm) {
		alarms.add(alarm);
	}


	public SensorList getSensorList() {
		return sensorList;
	}

	public void setSensorList(SensorList sensorList) {
		this.sensorList = sensorList;
	}

	public List<MySensor> getMySensorList() {
		return mySensorList;
	}

	public void setMySensorList(List<MySensor> mySensorList) {
		this.mySensorList = mySensorList;
	}

	
}
