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
	<h1 onclick="location.href='main.jsp'">TEAM2 MARKET</h1>
<%
	Connection conn = ConnectDB.getConnection();
	PreparedStatement pstmt;
	ResultSet rs;
	String ItemID = request.getParameter("ItemID");
	String query1 = "SELECT I.Iname, I.Iprice, P.Pname, P.Plocation FROM item I, provider P WHERE I.Iprovider = P.Pid AND I.ItemID = " + ItemID;
%>
    <br/> <h4>ITEM DETAIL</h4>
<%  
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();

	rs.next();
	out.println("<div align=\"center\">");
	out.println("<table class=table table-hover align=\"center\" border=\"1\">");
	out.println("<th>Name</th>");
	out.println("<th>Price</th>");
	out.println("<th>Provider</th>");
	out.println("<th>Location</th>");
	out.println("<tr align=\"center\">");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("</tr>");
	out.println("</table>");
	out.println("</div>");
	pstmt.close(); 
%>
<%

	conn.close();
%>

</body>
</html>
