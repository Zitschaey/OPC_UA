package deprecated;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

@Deprecated

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
