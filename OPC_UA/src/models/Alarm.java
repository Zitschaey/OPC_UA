package models;

import java.util.Date;

public class Alarm {

    private long dauer;
    private Date date;
    private String fehlermeldung;
    private MyStation station;

    public long getDauer() {
        return dauer;
    }

    public void setDauer(long dauer) {
        this.dauer = dauer;
    }

    public Date getDatum() {
        return date;
    }

    public void setDatum(Date datum) {
        this.date = datum;
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
