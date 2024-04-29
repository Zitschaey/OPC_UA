package multithreading;

import models.System;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class ParallelTaskExecutor {
    private System system;

    public ParallelTaskExecutor(System system) {
        this.system = system;
    }

    public void executeParallelTasks() {
        ExecutorService executor = Executors.newFixedThreadPool(5);

        for (int i = 0; i < system.getStationList().length; i++) {
            int stationIndex = i; 
            executor.submit(() -> {
                try {
                    system.getStationList()[stationIndex].startDatacrawl();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            });
        }

        executor.shutdown();
        try {
            executor.awaitTermination(Long.MAX_VALUE, TimeUnit.NANOSECONDS);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    public System getAnlage() {
        return system;
    }

    public void setAnlage(System anlage) {
        this.system = anlage;
    }
}
