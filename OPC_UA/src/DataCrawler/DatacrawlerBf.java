package DataCrawler;

import java.sql.SQLException;
import java.util.List;

import anlageObjekte.MySensor;
import db_services.DatabaseService;

public class DatacrawlerBf {

	public static void main(String[] args) throws SQLException {

		List<MySensor> sensors = DatabaseService.getSensorByStation(1);

		for (MySensor mySensor : sensors) {
			System.out.println(mySensor.getBrowseName());
		}
	}

}
