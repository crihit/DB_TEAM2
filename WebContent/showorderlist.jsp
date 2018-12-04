<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<title>Team2 Market</title>
</head>
<body>
	<h1 class="display-3" onclick="location.href='main.jsp'" align="center">TEAM2 MARKET</h1>
<%
	Connection conn = ConnectDB.getConnection();
	PreparedStatement pstmt;
	ResultSet rs;
	String Cusid = (String)session.getAttribute("Cusid");
	String query1 = "SELECT O.CartID, O.Odate FROM orders O, cart T WHERE T.Cusid = \'" + Cusid + "\' AND T.CartID = O.CartID ORDER BY O.Odate DESC";
%>
    <br/> <h4>ORDER LIST</h4>
<%  
/* 	pstmt2 = conn.prepareStatement(query2);
	rs2 = pstmt2.executeQuery();
	rs2.next();
	out.println("<h2>" + rs2.getString(1) +" > "+ rs2.getString(2) + "</h2>");
 */
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();
	out.println("<div align=\"center\">");
	out.println("<table class=\"table table-hover table-bordered\" align=\"center\" border=\"1\">");
/*	ResultSetMetaData rsmd = rs.getMetaData();
 	int cnt = rsmd.getColumnCount();
 	for(int i=1;i<=cnt;i++){
		out.println("<th>"+rsmd.getColumnName(i)+"</th>");
	} */
	out.println("<thead><th align=\"center\">ORDER ID</th>");
	out.println("<th align=\"center\">DATE</th></thead><tbody>");
	while(rs.next()){
		out.println("<tr align=\"center\" onclick=\"location.href=\'showorder.jsp?orderid=" + rs.getString(1) +"\'\">");
		out.println("<td>"+rs.getString(1)+"</td>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("</tr>");
	}
	out.println("</tbody></table>");
	out.println("</div>");
	pstmt.close();
	conn.close();
%>

</body>
</html>
