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
import stationen.Bf;
import stationen.Hl;
import stationen.PR;
import stationen.Pl;
import stationen.Rl;

public class Main {
	public static void main(String[] args) throws Exception {	
		parallelStart();   
	}
	

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
		 
		MyStation bf = new Bf();
		MyStation hl = new Hl();
		MyStation pl = new Pl();
		MyStation pr = new PR();
		MyStation rl = new Rl();

		ExecutorService executor = Executors.newFixedThreadPool(5);

        // Parallele Ausführung der Prozesse für jede Station
        executor.submit(() -> {
			try {
				bf.startDatacrawl();
			} catch (Exception e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				hl.startDatacrawl();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				pl.startDatacrawl();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				pr.startDatacrawl();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		});
        executor.submit(() -> {
			try {
				rl.startDatacrawl();
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

