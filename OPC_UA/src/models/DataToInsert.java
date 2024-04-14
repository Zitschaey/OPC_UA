package models;

public class DataToInsert {

	   private int stationID;
	   private int sensorID;
	   private  String valueLine;

	    public DataToInsert(int stationID, int sensorID, String valueLine) {
	        this.stationID = stationID;
	        this.sensorID = sensorID;
	        this.valueLine = valueLine;
	    }

		public int getStationID() {
			return stationID;
		}

		public void setStationID(int stationID) {
			this.stationID = stationID;
		}

		public int getSensorID() {
			return sensorID;
		}

		public void setSensorID(int sensorID) {
			this.sensorID = sensorID;
		}

		public String getValueLine() {
			return valueLine;
		}

		public void setValueLine(String valueLine) {
			this.valueLine = valueLine;
		}
	    
	    
	
}
