package services;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



public class FilterService {
	
	public static void main(String[] args) {
		
		 String input = "VALUE: DataValue(value=false, statusCode=GOOD (0x040000) \"The node id refers to a node that does not exist in the server address space.\")";

		System.out.println(filterDataValue(input)); 
	}
		
	
	
	private static void filterFirstData (String inputFileName, String outputFileName) throws IOException {
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
	
	private static void filterSecondData(String inputFileName, String outputFileName)
			throws IOException {
		
		List<String> sensors = new ArrayList<>();
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
	
	
	  public static String filterDataValue(String input) {
	        int startIndex = input.indexOf("VALUE: DataValue(");
	        if (startIndex == -1) {
	            return input;
	        }
	        int firstClosingIndex = input.indexOf(")", startIndex + "VALUE: DataValue(".length());
	        if (firstClosingIndex == -1) {
	            return input;
	        }
	        int secondClosingIndex = input.indexOf(")", firstClosingIndex + 1);
	        if (secondClosingIndex == -1) {
	            return input;
	        }
	        return input.substring(startIndex + "VALUE: DataValue(".length(), secondClosingIndex);
	    }
}
