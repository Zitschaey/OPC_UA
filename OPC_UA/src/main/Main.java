package main;

import anlage_instances.EtsDidacticAnlage;
import multithreading.ParallelTaskExecutor;

public class Main {
    public static void main(String[] args) throws Exception {
        ParallelTaskExecutor parallelTaskExecutor = new ParallelTaskExecutor(new EtsDidacticAnlage());
        parallelTaskExecutor.executeParallelTasks();
    }
}

