package models;

import de.judge.opc_ets.SensorList;
import enums.Stationen;
import services.DatabaseService;
import services.MyStationService;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public abstract class MyStation {
    private static final MyStationService MY_STATION_SERVICE = new MyStationService();

    protected Stationen station;
    protected String description;
    protected System system;
    protected ArrayList<Alarm> alarms;
    protected SensorList sensorList;
    protected List<MySensor> mySensorList;

    protected MyStation(Stationen station) {
        super();
        this.station = station;
        this.description = station.getStation().getID();
        try {
            this.sensorList = MY_STATION_SERVICE.createSensorList(station);
            this.mySensorList = MY_STATION_SERVICE.createMySensorList(station);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public void startDatacrawl() throws Exception {
        DatabaseService.persistDatacrawl(this);
    }

    public Stationen getStation() {
        return station;
    }

    public void setStation(Stationen station) {
        this.station = station;
    }

    public String getBezeichnung() {
        return description;
    }

    public void setBezeichnung(String bezeichnung) {
        this.description = bezeichnung;
    }

    public System getAnlage() {
        return system;
    }

    public void setAnlage(System anlage) {
        this.system = anlage;
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
