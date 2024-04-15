package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import enums.Stationen;
import models.MyStation;
import services.DatabaseService;
import services.InsertionService;
import stationen.Bf;
import stationen.Hl;
import stationen.PR;
import stationen.Pl;
import stationen.Rl;

public class Main {
	public static void main(String[] args) throws Exception {
		
		InsertionService insertionService = new InsertionService();
	    
		// sequenceStart(20);
		
		//DatabaseService.consoleMachine(Stationen.PL , DatabaseService.createConnection());
		
		parallelStart();
	    
	    // MyStation hf = new Hl();
	    
	    
	    // insertionService.inserDataCrawler(Stationen.BF);
	   
	    
	    
	}
	// DataCrawl über die Stationsobjekte straten

	// bfAnlange.startDatacrawl();
	// hlAnlange.startDatacrawl();+
	// bfAnlange.startDatacrawl();
	// plAnlage.startDatacrawl();
	// prAnlage.startDatacrawl();
	// rlAnlage.startDatacrawl();

	// Datacrawl über den DatabaseService starten (alle Sensoren)
	// DatabaseService.inserDataCrawler(Stationen.HL);

	// Datacrawl über den DatabaseService starten (einzelner Sensor mit ID)
	// DatabaseService.inserDataCrawler(Stationen.BF, 1);

	public static void sequenceStart(int durationInMinutes) throws InterruptedException {

		ScheduledExecutorService executor = Executors.newScheduledThreadPool(1); 
		Runnable task = () -> {
			try {
				DatabaseService.inserDataCrawler(Stationen.RI);
				DatabaseService.inserDataCrawler(Stationen.BF);
				DatabaseService.inserDataCrawler(Stationen.HL);
				DatabaseService.inserDataCrawler(Stationen.PL);
				DatabaseService.inserDataCrawler(Stationen.PR);
			} catch (Exception e) {
				e.printStackTrace();
			}
		};

		executor.scheduleAtFixedRate(task, 0, 1, TimeUnit.NANOSECONDS);
        Thread.sleep(durationInMinutes * 60 * 1000); 
		executor.shutdown();
	}

	public static void parallelStart() throws InterruptedException, SQLException, ExecutionException {
		  String connStr = "jdbc:mysql://localhost:3306/testdatenbank";
	        Connection connection = DriverManager.getConnection(connStr, "root", "");

		ExecutorService executor = Executors.newFixedThreadPool(5);

        // Parallele Ausführung der Prozesse für jede Station
        executor.submit(() -> {
			try {
				DatabaseService.consoleMachine(Stationen.RI,connection);
			} catch (Exception e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				DatabaseService.consoleMachine(Stationen.BF, connection);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				DatabaseService.consoleMachine(Stationen.HL, connection);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				DatabaseService.consoleMachine(Stationen.PR, connection);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				DatabaseService.consoleMachine(Stationen.PL, connection);
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});

        // Warten, bis alle Tasks abgeschlossen sind
        executor.shutdown();
        try {
            executor.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
	    }

