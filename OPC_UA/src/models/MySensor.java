package models;

public class MySensor {
    private String browseName;
    private int nodeId;
    private MyStation station;
    private int sensorId;

    public MySensor(String browseName, int nodeId, MyStation station) {
        this.browseName = browseName;
        this.nodeId = nodeId;
        this.station = station;
    }

    public MySensor(String browseName, int nodeId) {
        this.browseName = browseName;
        this.nodeId = nodeId;
    }

    public MySensor() {

    }
    
    public String getBrowseName() {
        return browseName;
    }

    public void setBrowseName(String browseName) {
        this.browseName = browseName;
    }

    public int getNodeId() {
        return nodeId;
    }

    public void setNodeId(int nodeId) {
        this.nodeId = nodeId;
    }

    public MyStation getStation() {
        return station;
    }

    public void setStation(MyStation station) {
        this.station = station;
    }

    public int getSensorId() {
        return sensorId;
    }

    public void setSensorId(int sensorId) {
        this.sensorId = sensorId;
    }

}
