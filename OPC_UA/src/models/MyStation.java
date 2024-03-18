package models;

import java.util.ArrayList;

import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;
import enums.Stationen;
import services.DatabaseService;
import services.StationService;

public abstract class MyStation {

	protected Stationen station;
	protected String bezeichnung;
	protected Anlage anlage;
	protected ArrayList<Alarm> alarms;
	protected SensorList sensors;

	protected MyStation(Stationen station, String bezeichnung, SensorList sensors) {
		super();
		this.station = station;
		this.bezeichnung = bezeichnung;
		this.sensors = sensors;
	}

	public void startDatacrawl() throws Exception {
		DatabaseService.inserDataCrawler(station);
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

	public String getStationName() {
		return bezeichnung;
	}

	public void setStationName(String stationName) {
		this.bezeichnung = stationName;
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

	public SensorList getSensors() {
		return sensors;
	}

	public void setSensors(SensorList sensors) {
		this.sensors = sensors;
	}

}
