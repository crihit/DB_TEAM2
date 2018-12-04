<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<%
	Connection conn = ConnectDB.getConnection();
	Statement stmt = conn.createStatement();
	String state = request.getParameter("state");
	String RID, updateQuery;
	String query = "SELECT RID FROM retailer WHERE Astate = \'"+state+"\'";
	ResultSet rs = stmt.executeQuery(query);
	ResultSet rs2;
	if(rs.next()){
		RID = rs.getString(1);
		
		Statement stmt2 = conn.createStatement();
		String query2 = "SELECT I.ItemID, P.Icount FROM item I, putin P, nowcart T WHERE T.Cusid = \'admin\' AND P.CartID = T.CartID AND I.ItemID = P.ItemID";
		rs2 = stmt2.executeQuery(query2);
		
		while(rs2.next())
		{
			String itemID, count;
			itemID = rs2.getString(1);
			count = rs2.getString(2);
			
			updateQuery = "UPDATE stores SET Icount = Icount + "+count+" WHERE ItemID = "+itemID+" AND RID = "+RID;
			stmt.executeUpdate(updateQuery);
		}
		stmt.close();
		stmt2.close();
		
		String query3 = "DELETE FROM putin WHERE CartID = 0";
		Statement stmt3 = conn.createStatement();
		stmt3.executeUpdate(query3);
		
		stmt3.close();
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("showAdminCart.jsp?error=unknown");
	}
	conn.close();
%>
</body>
</html>