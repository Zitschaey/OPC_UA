package main;
import enums.Stationen;
import services.DatabaseService;

public class Main {
	public static void main(String[] args) throws Exception {
	
   //Datacrawl aller Sensoren einer Sation
	//DatabaseService.inserDataCrawler(Stationen.RI);	
	DatabaseService.inserDataCrawler(Stationen.HL);
	//Datacrawl eines Sensors einer Station nach ID;
	// DatabaseService.inserDataCrawler(Stationen.BF, 1);
	
	}

}
