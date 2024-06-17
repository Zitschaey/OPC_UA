package request;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import enums.Stations;

public class AlarmGet {
	
	public static void main(String[] args) {
	
//	sendPostRequest(Stations.HL, "Das ist ein Test");
	System.out.println(getAlarms());
	
	}
	
	  private static String escapeJsonString(String value) {
	        return value.replace("\"", "\\\"");
	    }
	
	 public static String getAlarms() {
		try {
            // Die URL, auf die zugegriffen werden soll
            String urlString = "http://10.3.0.71:8080/mhubx-cc/module/juwi/action?page=Logic.Interface&name=getAlarms&source=system&system_id=cps1";
            URL url = new URL(urlString);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

            // GET-Methode verwenden
            connection.setRequestMethod("GET");
            connection.setRequestProperty("Authorization", "Basic c3lzdGVtOmNoYW5nZWl0");

            // Überprüfen Sie die Antwortcode der Anfrage
            int responseCode = connection.getResponseCode();

            if (responseCode == HttpURLConnection.HTTP_OK) { // Erfolg
                BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                String inputLine;
                StringBuffer response = new StringBuffer();

                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();

                // Ausgabe der Antwort
                return response.toString();
            } else {
               return "GET request not worked";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
		return  "Konnte keine Verbindung zur URL erstellen.";
    }
	
	

		 public static boolean sendPostRequest(Stations station, String fehlermeldung) {
		        try {
		            // Die URL, zu der die POST-Anfrage gesendet wird
		            String urlString = "http://10.3.0.71:8080/mhubx-cc/module/juwi/action?page=Logic.Interface&name=postAlarm";
		            URL url = new URL(urlString);
		            HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		            // POST-Methode verwenden
		            connection.setRequestMethod("POST");
		            connection.setRequestProperty("Content-Type", "application/json; utf-8");
		            connection.setRequestProperty("Authorization", "Basic c3lzdGVtOmNoYW5nZWl0");
		            connection.setRequestProperty("Accept", "application/json");
		            connection.setDoOutput(true);
System.out.println(station.getStation().getID());
		            // JSON-Daten mit dem übergebenen Parameter
		            String jsonInputString = "{"
		                    + "\"source\": {\"id\":\"cps1;" + station.getStation().getShort() + "\"},"
		                    + "\"type\":\"module\","
		                    + "\"severity\":\"error\","
		                    + "\"code\": \"2\","
		                    + "\"text\": \"" + escapeJsonString(fehlermeldung) + "\""
		                    + "}";

		            // JSON-Daten in den OutputStream schreiben
		            try (OutputStream os = connection.getOutputStream()) {
		                byte[] input = jsonInputString.getBytes("utf-8");
		                os.write(input, 0, input.length);
		            }

		            // Überprüfen Sie die Antwortcode der Anfrage
		            int responseCode = connection.getResponseCode();
		            System.out.println("Response Code: " + responseCode);

		            if (responseCode == HttpURLConnection.HTTP_OK || responseCode == HttpURLConnection.HTTP_CREATED) {
		                // Erfolg
		                return true;
		            } else {
		                // Anfrage fehlgeschlagen
		                return false;
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		            return false;
		        }
		    }
	
}
