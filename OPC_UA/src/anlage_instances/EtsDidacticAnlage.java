package anlage_instances;

import models.System;
import models.MyStation;
import station_instances.*;

public class EtsDidacticAnlage extends System {

    public EtsDidacticAnlage() {
        super(new MyStation[]{new Bf(), new Hl(), new Pl(), new Pr(), new Rl()}, "ETS Didactic Anlage");
    }
}