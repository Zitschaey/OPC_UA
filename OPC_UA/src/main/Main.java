package main;

import anlage_instances.EtsDidacticAnlage;
import multithreading.ParallelTaskExecutor;

public class Main {
    public static void main(String[] args) throws Exception {
        ParallelTaskExecutor parallelTaskExecutor = new ParallelTaskExecutor(new EtsDidacticAnlage());
        parallelTaskExecutor.executeParallelTasks();
    }


/*    public static void sequenceStart(int durationInMinutes) throws InterruptedException {

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
    }*/
/*
    public static void parallelStart() throws InterruptedException, SQLException, ExecutionException {

        Anlage etsDidactic = new EtsDidacticAnlage();

        ExecutorService executor = Executors.newFixedThreadPool(5);

        // Parallele Ausführung der Prozesse für jede Station
        executor.submit(() -> {
            try {
                etsDidactic.getStationList()[0].startDatacrawl();
            } catch (Exception e2) {
                // TODO Auto-generated catch block
                e2.printStackTrace();
            }
        });
        executor.submit(() -> {
            try {
                etsDidactic.getStationList()[1].startDatacrawl();
            } catch (Exception e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
        });
        executor.submit(() -> {
            try {
                etsDidactic.getStationList()[2].startDatacrawl();
            } catch (Exception e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
        });

        executor.submit(() -> {
            try {
                etsDidactic.getStationList()[3].startDatacrawl();
            } catch (Exception e1) {
                // TODO Auto-generated catch block
                e1.printStackTrace();
            }
        });
        executor.submit(() -> {
            try {
                etsDidactic.getStationList()[4].startDatacrawl();
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
    }*/
}

