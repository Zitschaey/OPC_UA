package mapper;

import java.util.ArrayList;
import java.util.List;

import models.Alarm;
import request.AlarmGet;

public class AlarmMapper {
	
	public static List<Alarm> mapJsonToAlarms(String jsonString) {
        List<Alarm> alarms = new ArrayList<>();
        
        if (jsonString == null || jsonString.trim().isEmpty()) {
            throw new IllegalArgumentException("Der JSON-String ist leer.");
        }

        try {
            // Entfernen der äußeren geschweiften Klammern
            jsonString = jsonString.substring(1, jsonString.length() - 1);

            // Aufteilen des JSON-Strings anhand des Schlüssels "alarms"
            String[] parts = jsonString.split("\"alarms\":\\[");
            if (parts.length < 2) {
                throw new IllegalArgumentException("Ungültiges JSON-Format: Der Schlüssel 'alarms' wurde nicht gefunden.");
            }

            String alarmsArray = parts[1];

            // Entfernen der abschließenden Klammer des Arrays
            alarmsArray = alarmsArray.substring(0, alarmsArray.length() - 1);

            // Aufteilen der Alarme in einzelne Objekte
            String[] alarmObjects = alarmsArray.split("\\},\\{");

            for (String alarmObject : alarmObjects) {
                // Wiederherstellen der JSON-Syntax für jedes Alarmobjekt
                alarmObject = "{" + alarmObject.replaceFirst("^\\{", "").replaceFirst("\\}$", "") + "}";

                // Parsen der module_id
                String moduleId = alarmObject.split("\"module_id\":\"")[1].split("\"")[0];

                // Parsen der Fehler
                String errorsArray = alarmObject.split("\"errors\":\\[")[1].split("\\]")[0];
                String[] errorObjects = errorsArray.split("\\},\\{");

                for (String errorObject : errorObjects) {
                    // Wiederherstellen der JSON-Syntax für jedes Fehlerobjekt
                    errorObject = "{" + errorObject.replaceFirst("^\\{", "").replaceFirst("\\}$", "") + "}";

                    // Parsen des Fehlercodes und der Fehlermeldung
                    String code = errorObject.split("\"code\":\"")[1].split("\"")[0];
                    String msg = errorObject.split("\"msg\":\"")[1].split("\"")[0];

                    // Erstellen des Alarm-Objekts und Hinzufügen zur Liste
                    Alarm alarm = new Alarm();
                    alarm.setModulId(moduleId);
                    alarm.setErrorCode(Integer.parseInt(code));
                    alarm.setErrorMessage(msg);
                    alarm.setActive(true);

                    alarms.add(alarm);
                }
            }

        } catch (ArrayIndexOutOfBoundsException e) {
            throw new IllegalArgumentException("Ungültiges JSON-Format: Es fehlt eine erwartete Komponente.", e);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return alarms;
    }

}
