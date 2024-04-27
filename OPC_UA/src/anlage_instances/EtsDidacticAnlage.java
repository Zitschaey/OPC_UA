package anlage_instances;

import models.Anlage;
import models.MyStation;
import station_instances.*;

public class EtsDidacticAnlage extends Anlage {

    public EtsDidacticAnlage() {
        super(new MyStation[]{new Bf(), new Hl(), new Pl(), new Pr(), new Rl()}, "ETS Didactic Anlage");
    }
}