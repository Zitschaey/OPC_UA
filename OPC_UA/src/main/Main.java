package main;

import enums.Stationen;
import services.DatabaseService;
import stationen.Bf;
import stationen.Hl;
import stationen.PR;
import stationen.Pl;
import stationen.Rl;

public class Main {
	public static void main(String[] args) throws Exception {

		Bf bfAnlange = new Bf();
		Hl hlAnlange = new Hl();
		Pl plAnlage = new Pl();
		PR prAnlage = new PR();
		Rl rlAnlage = new Rl();

		// DataCrawl über die Stationsobjekte straten

		bfAnlange.startDatacrawl();
		// hlAnlange.startDatacrawl();
		// bfAnlange.startDatacrawl();
		// plAnlage.startDatacrawl();
		// prAnlage.startDatacrawl();
		// rlAnlage.startDatacrawl();

		// Datacrawl über den DatabaseService starten (alle Sensoren)

		DatabaseService.inserDataCrawler(Stationen.RI);
		// DatabaseService.inserDataCrawler(Stationen.HL);

		// Datacrawl über den DatabaseService starten (einzelner Sensor mit ID)
		DatabaseService.inserDataCrawler(Stationen.BF, 1);

	}

}
