package enums;

import de.judge.opc_ets.Station;

public enum Stations {
    BF(Station.BF, 1), HL(Station.HL, 2), PL(Station.PL, 3), PR(Station.PR, 4), RI(Station.RL, 5);

    private final Station station;
    private final int stationID;

    private Stations(Station station, int stationID) {
        this.station = station;
        this.stationID = stationID;
    }

    public Station getStation() {
        return station;
    }

    public int getStationID() {
        return stationID;
    }

}
