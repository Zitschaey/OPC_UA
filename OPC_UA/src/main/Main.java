package main;

import multithreading.ParallelTaskExecutor;
import services.DatabaseService;
import system_instances.EtsDidacticSystem;

public class Main {
	public static void main(String[] args) throws Exception {
		ParallelTaskExecutor parallelTaskExecutor = new ParallelTaskExecutor(new EtsDidacticSystem());
//		parallelTaskExecutor.executeParallelTasks();
		parallelTaskExecutor.executeAlarmCheck();
//		DatabaseService.insertAlarms();

	}

}
