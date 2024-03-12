package stationen;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

import com.prosysopc.ua.SecureIdentityException;
import com.prosysopc.ua.ServiceException;

import anlageObjekte.Anlage;
import anlageObjekte.MySensor;
import anlageObjekte.MyStation;
import db_services.StationService;
import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.Sensor;
import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;
import enums.Stationen;

public class Bf {
	public static void main(String[] args) throws Exception {
		
		StationService.createConnection(Stationen.BF);

	}
}
