package models;

import java.util.ArrayList;

public abstract class System {

    private MyStation[] myStations;
    private ArrayList<Order> orders;
    private String name;
    private String status;
    private double currentProductionrate;

    public System(MyStation[] stationList, String name) {
        super();
        this.myStations = stationList;
        this.name = name;
    }

    public MyStation[] getStationList() {
        return myStations;
    }

    public void setStationList(MyStation[] stationList) {
        this.myStations = stationList;
    }

    public ArrayList<Order> getOrders() {
        return orders;
    }

    public void setOrders(ArrayList<Order> orders) {
        this.orders = orders;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public double getAktuelleProduktionsrate() {
        return currentProductionrate;
    }

    public void setAktuelleProduktionsrate(double aktuelleProduktionsrate) {
        this.currentProductionrate = aktuelleProduktionsrate;
    }


}
