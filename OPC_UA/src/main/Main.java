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
		
		
			bfAnlange.startDatacrawl();
			//hlAnlange.startDatacrawl();
			// bfAnlange.startDatacrawl();
			// plAnlage.startDatacrawl();
			// prAnlage.startDatacrawl();
			// rlAnlage.startDatacrawl();
			
		
		
		
	
    //Datacrawl aller Sensoren einer Sation
	//DatabaseService.inserDataCrawler(Stationen.RI);	
	//DatabaseService.inserDataCrawler(Stationen.HL);
	//Datacrawl eines Sensors einer Station nach ID;
	//DatabaseService.inserDataCrawler(Stationen.BF, 1);
	
	}

}
