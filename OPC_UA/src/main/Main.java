package main;

import multithreading.ParallelTaskExecutor;
import system_instances.EtsDidacticSystem;

public class Main {
    public static void main(String[] args) throws Exception {
        ParallelTaskExecutor parallelTaskExecutor = new ParallelTaskExecutor(new EtsDidacticSystem());
        parallelTaskExecutor.executeParallelTasks();
    }
}

