package deprecated;

import com.prosysopc.ua.SecureIdentityException;
import com.prosysopc.ua.ServiceException;
import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Deprecated

public class LegacyPR {
    public static void main(String[] args) {
        LegacyMySensor extractor = new LegacyMySensor();

        final String filePath = "OutputPR_FILTERED_ATTRIBUTES.txt";
        List<LegacyMySensor> sensorObjects = extractor.createSensorObjectsFromFile(filePath);
        SensorList list = new SensorList();

        for (LegacyMySensor sensorObj : sensorObjects) {
            list.addSensor(sensorObj.getNodeId(), sensorObj.getBrowseName());
        }
        try {

            OPCClientETS.getInstance().connectToMachine(Station.PR);
            OPCClientETS.getInstance().setCrawlOffset(1000);
            OPCClientETS.getInstance().browseOPCServer(list);

            InputStream in = OPCClientETS.getInstance().getInputStream();


            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = in.read(buffer)) != -1) {
                String data = new String(buffer, 0, bytesRead);
                System.out.println(data + "\n");


            }

            OPCClientETS.getInstance().disconnect();

        } catch (ServiceException | SecureIdentityException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

}
