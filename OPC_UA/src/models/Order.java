package models;

public class Order {
    private int[] countBullet = new int[3];
    private String coverColour;
    private int orderId;
    private String status;
    private long time;
    private System anlage;

    public Order(int[] anzahlKugel, String deckelFarbe, System anlage) {
        super();
        this.countBullet = anzahlKugel;
        this.coverColour = deckelFarbe;
        this.anlage = anlage;
    }

    public int[] getAnzahlKugel() {
        return countBullet;
    }

    public void setAnzahlKugel(int[] anzahlKugel) {
        this.countBullet = anzahlKugel;
    }

    public System getAnlage() {
        return anlage;
    }

    public void setAnlage(System anlage) {
        this.anlage = anlage;
    }

    public String getDeckelFarbe() {
        return coverColour;
    }

    public void setDeckelFarbe(String deckelFarbe) {
        this.coverColour = deckelFarbe;
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
