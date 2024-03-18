package models;

public class Order {
	private int[] anzahlKugel = new int[3];
	private String deckelFarbe;
	private int orderId;
	private String status;
	private long time;
	private Anlage anlage;

	public Order(int[] anzahlKugel, String deckelFarbe, Anlage anlage) {
		super();
		this.anzahlKugel = anzahlKugel;
		this.deckelFarbe = deckelFarbe;
		this.anlage = anlage;
	}

	public int[] getAnzahlKugel() {
		return anzahlKugel;
	}

	public void setAnzahlKugel(int[] anzahlKugel) {
		this.anzahlKugel = anzahlKugel;
	}

	public Anlage getAnlage() {
		return anlage;
	}

	public void setAnlage(Anlage anlage) {
		this.anlage = anlage;
	}

	public String getDeckelFarbe() {
		return deckelFarbe;
	}

	public void setDeckelFarbe(String deckelFarbe) {
		this.deckelFarbe = deckelFarbe;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getTime() {
		return time;
	}

	public void setTime(long time) {
		this.time = time;
	}

}
