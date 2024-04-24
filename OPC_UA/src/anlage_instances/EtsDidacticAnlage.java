package anlage_instances;

import models.Anlage;
import models.MyStation;
import station_instances.Bf;
import station_instances.Hl;
import station_instances.Pl;
import station_instances.Pr;
import station_instances.Rl;

public class EtsDidacticAnlage extends Anlage {
	
	public EtsDidacticAnlage() {
		super(new MyStation[]{new Bf(), new Hl(), new Pl(), new Pr(), new Rl()}, "ETS Didactic Anlage");
	}
}
