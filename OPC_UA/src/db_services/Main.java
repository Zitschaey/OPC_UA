package db_services;
import enums.Stationen;

public class Main {
	public static void main(String[] args) throws Exception {
	
		//Gesamte Ausgabe aller Sensoren einer Sation
	//DatabaseService.inserDataCrawler(Stationen.RI);	
	DatabaseService.inserDataCrawler(Stationen.HL);
	//Gezielte Ausgabe eines Sensors einer Station nach ID;
	// DatabaseService.inserDataCrawler(Stationen.BF, 1);
	
	}

}
