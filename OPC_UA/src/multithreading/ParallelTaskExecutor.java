package multithreading;

import models.Anlage;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public class ParallelTaskExecutor {
    private Anlage anlage;

    public ParallelTaskExecutor(Anlage anlage) {
        this.anlage = anlage;
    }

    public void executeParallelTasks() {
        ExecutorService executor = Executors.newFixedThreadPool(5);

        for (int i = 0; i < anlage.getStationList().length; i++) {
            int stationIndex = i; // to make it effectively final for lambda
            executor.submit(() -> {
                try {
                    anlage.getStationList()[stationIndex].startDatacrawl();
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

    public Anlage getAnlage() {
        return anlage;
    }

    public void setAnlage(Anlage anlage) {
        this.anlage = anlage;
    }
}
