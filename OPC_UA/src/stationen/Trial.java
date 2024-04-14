package stationen;

import java.util.ArrayList;
import java.util.List;

import models.MySensor;
import models.MyStation;

public class Trial {
	
public static void main(String[] args) {
	MyStation bf = new Bf();
	
	for (MySensor mySensor : bf.getMySensorList()) {
	
		System.out.println(bf.getBezeichnung() + " " + mySensor.getBrowseName() );
	}
	
}

}
