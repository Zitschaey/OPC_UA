package legacy_exctraction;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ExtractionFilter {

	public static void main(String[] args) {
		List<String> sensors = new ArrayList<>();
		sensors.add("+");

		String inputFile = "outputPR.txt";
		String outputFile = "OutputPR_FILTERED.txt";

		try {
			extractAndSaveSensors(inputFile, sensors, outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void extractAndSaveSensors(String inputFileName, List<String> sensors, String outputFileName)
			throws IOException {
		try (BufferedReader br = new BufferedReader(new FileReader(inputFileName));
				BufferedWriter bw = new BufferedWriter(new FileWriter(outputFileName))) {

			String line;
			boolean isSensorSection = false;

			while ((line = br.readLine()) != null) {
				for (String sensor : sensors) {
					if (line.contains(sensor)) {
						isSensorSection = true;
						break;
					}
				}
				if (isSensorSection) {
					bw.write(line);
					bw.newLine();
				}
				if (line.trim().isEmpty()) {
					isSensorSection = false;
				}
			}
		}
	}
}
