SELECT s.AnzeigeName, s.StationID, dv.Rohwert, dc.Uhrzeit FROM `datacrawl` dc
join datavalue dv on dv.ValueID = dc.ValueID
join sensor s on s.SensorID = dc.SensorID
join station st on st.StationID = s.SensorTypID
WHERE dc.SensorID = 78
ORDER BY dc.Uhrzeit DESC;



SELECT dc.SensorID, dc.StationID, dv.Rohwert, dc.Uhrzeit FROM `datacrawl` dc
join datavalue dv on dv.ValueID = dc.ValueID
WHERE dv.Rohwert LIKE 'value=%' -- Prüfe, ob der Wert mit 'value:' beginnt
AND dv.Rohwert NOT LIKE '%value=false%' -- Schließe Werte aus, die 'value=false' enthalten
AND dv.Rohwert NOT LIKE '%value=true%' -- Schließe Werte aus, die 'value=true' enthalten;
ORDER BY dc.Uhrzeit DESC;



SELECT count(dc.ValueID), dc.SensorID FROM `datacrawl` dc
join datavalue dv on dv.ValueID = dc.ValueID
WHERE dv.Rohwert LIKE 'value=%' -- Prüfe, ob der Wert mit 'value:' beginnt
AND dv.Rohwert NOT LIKE '%value=false%' -- Schließe Werte aus, die 'value=false' enthalten
AND dv.Rohwert NOT LIKE '%value=true%' -- Schließe Werte aus, die 'value=true' enthalten;
GROUP by dc.SensorID;