package phase3.DB;

import java.sql.*;

public class ConnectDB {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		String DB_NAME = "team2";
		String ID = "knu";
		String PASSWORD = "comp322";
	
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/" + DB_NAME;
		Connection conn = DriverManager.getConnection(url, ID, PASSWORD);
	
		return conn; 
	}

	public static boolean checkID(String id) throws ClassNotFoundException, SQLException {
		String query = "SELECT * FROM customer WHERE Cusid = \""+id+"\"";
		Connection conn = getConnection();
		Statement stmt;
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		rs.last();
		
		int cnt = rs.getRow();
		rs.first();
		if(cnt != 0) {
			return false;
		}
		else {
			return true;
		}
	}
	
	public static int checkCartNum() throws SQLException, ClassNotFoundException {
		String query = "SELECT CartID FROM cart ORDER BY CartID DESC";
		Connection conn = getConnection();
		Statement stmt;
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		
		int res = -1;
		if(rs.next()) {
			res = rs.getInt("CartID");
		}
		return res + 1;
	}
}
