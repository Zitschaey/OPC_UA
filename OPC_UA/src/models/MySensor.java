package anlageObjekte;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MySensor {
	private String browseName;
	private int nodeId;
	private MyStation station;
	
	    public MySensor(String browseName, int nodeId) {
	        this.browseName = browseName;
	        this.nodeId = nodeId;
	    }
	    
	    public MySensor() {
	       
	    }

	    public String getBrowseName() {
	        return browseName;
	    }

	    public int getNodeId() {
	        return nodeId;
	    }


	    public static List<MySensor> createSensorObjectsFromFile(String filePath) {
	        List<MySensor> sensorObjects = new ArrayList<>();

	        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
	            String line;
	            while ((line = reader.readLine()) != null) {
	                // Verwende eine regular expression, um NodeId und BrowseName zu extrahieren
	                Pattern pattern = Pattern.compile("NodeId: ns=(\\d+);s=, BrowseName: \\+(\\S+)");
	                Matcher matcher = pattern.matcher(line);

	                while (matcher.find()) {
	                    int nodeId = Integer.parseInt(matcher.group(1));
	                    String originalBrowseName = matcher.group(2);

	                    String browseName = "\"" + "+" + originalBrowseName + "\"";

	                    // Erstelle ein SensorObj-Objekt und füge es der Liste hinzu
	                    sensorObjects.add(new MySensor(browseName, nodeId));
	                }
	            }
	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	        return sensorObjects;
	    }
	        
	public void setBrowseName(String browseName) {
		this.browseName = browseName;
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
	

	
}
