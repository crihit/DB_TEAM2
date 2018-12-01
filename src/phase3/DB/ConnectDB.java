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
	/*public static ResultSet executeWithException(PreparedStatement pstmt) throws ClassNotFoundException{
		ResultSet rs;
		
		try {
			rs = pstmt.executeQuery();
		} catch(SQLException ex)
		{
			return null;
		}
		return rs; 
	}
	public static ResultSet executeWithException(Statement stmt, String query) throws ClassNotFoundException{
		ResultSet rs;
		
		try {
			rs = stmt.executeQuery(query);
		} catch(SQLException ex)
		{
			return null;
		}
		return rs; 
	}*/
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
}
