package models;

import java.util.Date;

import de.judge.opc_ets.Station;
import enums.Stations;

public class Alarm {
private int alarmID;
	private String modulId;
	private String errorMessage;
	private int errorCode;
	private boolean isActive;
	private Stations station;
	
	public String getModulId() {
		return modulId;
	}
	public void setModulId(String modulId) {
	    for (Stations station : Stations.values()) {
	        if (station.getStation().getShort().equals(modulId)) {
	            this.modulId = modulId;
	            this.station = station;
	            return; // Beende die Methode, wenn eine Übereinstimmung gefunden wurde
	        }
	    }
	    throw new IllegalArgumentException("Ungültige Modul-ID: " + modulId);
	    
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public int getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(int errorCode) {
		this.errorCode = errorCode;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public Stations getStation() {
		return station;
	}
	@Override
	public String toString() {
		return "Alarm [modulId=" + modulId + ", errorMessage=" + errorMessage + ", errorCode=" + errorCode
				+ ", isActive=" + isActive + ", station=" + station + "]";
	}
	public int getAlarmID() {
		return alarmID;
	}
	public void setAlarmID(int alarmID) {
		this.alarmID = alarmID;
	}
	public void setStation(Stations station) {
		this.station = station;
	}



	

	

	
}
