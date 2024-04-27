package deprecated;

import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.Station;

import java.io.*;


@Deprecated
public class ExtractorService {
    public void extractUnfilteredData(String outputName) {
        try {
            OPCClientETS.getInstance().connectToMachine(Station.PR);
            OPCClientETS.getInstance().browseOPCServer();
            OPCClientETS.getInstance().browseOPCServer();

            InputStream in = OPCClientETS.getInstance().getInputStream();

            try (Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outputName)))) {

                byte[] buffer = new byte[1024];
                int bytesRead;
                while ((bytesRead = in.read(buffer)) != -1) {
                    String data = new String(buffer, 0, bytesRead);
                    writer.write(data + "\n");
                }
            }
            OPCClientETS.getInstance().disconnect();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
