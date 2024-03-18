package models;

import java.util.ArrayList;

public class Anlage {

	private ArrayList<MyStation> stations;
	private ArrayList<Order> orders;
	private String name;
	private String status;
	private double aktuelleProduktionsrate;

	public Anlage(String name) {
		this.name = name;
		this.stations = new ArrayList<>();
	}

	public ArrayList<MyStation> getStations() {
		return stations;
	}

	public void setStations(ArrayList<MyStation> stations) {
		this.stations = stations;
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
		return aktuelleProduktionsrate;
	}

	public void setAktuelleProduktionsrate(double aktuelleProduktionsrate) {
		this.aktuelleProduktionsrate = aktuelleProduktionsrate;
	}

	// Methode zum Hinzufügen einer Station zur Liste
	public void addStation(MyStation station) {
		stations.add(station);
	}

	public void addOrder(Order order) {
		orders.add(order);
	}
}
