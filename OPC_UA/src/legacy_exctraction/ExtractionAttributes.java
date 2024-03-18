package legacy_exctraction;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ExtractionAttributes {
	public static void main(String[] args) {
		String inputFile = "OutputPR_FILTERED.txt";
		String outputFile = "OutputPR_FILTERED_ATTRIBUTES.txt";

		try {
			extractAndSaveAttributes(inputFile, outputFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void extractAndSaveAttributes(String inputFileName, String outputFileName) throws IOException {
		try (BufferedReader br = new BufferedReader(new FileReader(inputFileName));
				BufferedWriter bw = new BufferedWriter(new FileWriter(outputFileName))) {

			String line;
			Pattern pattern = Pattern.compile("NodeId=\"([^\"]+)\".*BrowseName=\"[^\"]+:(\\+[^\" ]+)\"");

			while ((line = br.readLine()) != null) {
				Matcher matcher = pattern.matcher(line);

				if (matcher.find()) {
					String nodeId = matcher.group(1);
					String browseName = matcher.group(2);

					bw.write("NodeId: " + nodeId + ", BrowseName: " + browseName);
					bw.newLine();
				}
			}
		}
	}
}