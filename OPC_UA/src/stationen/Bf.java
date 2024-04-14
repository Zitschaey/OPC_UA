package stationen;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.prosysopc.ua.SecureIdentityException;
import com.prosysopc.ua.ServiceException;

import de.judge.opc_ets.OPCClientETS;
import de.judge.opc_ets.Sensor;
import de.judge.opc_ets.SensorList;
import de.judge.opc_ets.Station;
import enums.Stationen;
import models.Anlage;
import models.MySensor;
import models.MyStation;
import services.DatabaseService;
import services.StationService;

public class Bf extends MyStation {
	public Bf(){
		super(Stationen.BF);
	}

}
