package phase3.DB;

import java.sql.*;

public class ConnectDB {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		String DB_NAME = "hak";
		String ID = "knu";
		String PASSWORD = "comp322";
	
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/" + DB_NAME;
		Connection conn = DriverManager.getConnection(url, ID, PASSWORD);
	
		return conn; 
	}
}
