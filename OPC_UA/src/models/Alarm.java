package models;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;

public class Alarm {

	private long dauer;
	private Date datum;
	private String fehlermeldung;
	private MyStation station;

	public long getDauer() {
		return dauer;
	}

	public void setDauer(long dauer) {
		this.dauer = dauer;
	}

	public Date getDatum() {
		return datum;
	}

	public void setDatum(Date datum) {
		this.datum = datum;
	}

	public String getFehlermeldung() {
		return fehlermeldung;
	}

	public void setFehlermeldung(String fehlermeldung) {
		this.fehlermeldung = fehlermeldung;
	}

	public MyStation getStation() {
		return station;
	}

	public void setStation(MyStation station) {
		this.station = station;
	}

}
