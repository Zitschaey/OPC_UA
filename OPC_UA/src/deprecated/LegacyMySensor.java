package deprecated;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Deprecated

public class LegacyMySensor {
    private String browseName;
    private int nodeId;

    private int sensorId;

    public LegacyMySensor(String browseName, int nodeId) {
        this.browseName = browseName;
        this.nodeId = nodeId;

    }

    public LegacyMySensor() {

    }

    public static List<LegacyMySensor> createSensorObjectsFromFile(String filePath) {
        List<LegacyMySensor> sensorObjects = new ArrayList<>();

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
                    sensorObjects.add(new LegacyMySensor(browseName, nodeId));
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return sensorObjects;
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


    public int getSensorId() {
        return sensorId;
    }

    public void setSensorId(int sensorId) {
        this.sensorId = sensorId;
    }

}
