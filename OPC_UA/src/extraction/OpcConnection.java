package extraction;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.UnknownHostException;
import java.sql.Time;

import com.prosysopc.ua.SecureIdentityException;
import com.prosysopc.ua.ServiceException;
import com.prosysopc.ua.client.ConnectException;
import com.prosysopc.ua.client.InvalidServerEndpointException;

import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.Sensor;
import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;

public class Client {

	public static void main(String[] args) {
		try {
			OPCClientETS.getInstance().connectToMachine(Station.PR);
			OPCClientETS.getInstance().browseOPCServer();
			OPCClientETS.getInstance().browseOPCServer();

			InputStream in = OPCClientETS.getInstance().getInputStream();

			try (Writer writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("outputPR.txt")))) {

				byte[] buffer = new byte[1024];
				int bytesRead;
				while ((bytesRead = in.read(buffer)) != -1) {
					String data = new String(buffer, 0, bytesRead);

					
					writer.write(data + "\n");
				}
			}
			OPCClientETS.getInstance().disconnect();
			OPCClientETS.getInstance().browseOPCServer(null);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}