package system_instances;

import models.System;
import models.MyStation;
import station_instances.*;

public class EtsDidacticSystem extends System {

    public EtsDidacticSystem() {
        super(new MyStation[]{new Bf(), new Hl(), new Pl(), new Pr(), new Rl()}, "ETS Didactic Anlage");
    }
}