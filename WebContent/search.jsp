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
	request.setCharacterEncoding("euc-kr");
	String SearchOn = request.getParameter("SearchOn");
	String input = request.getParameter("input");
	String query1 = "SELECT ItemID, Iname, Iprice FROM item";
	if(SearchOn.equals("1"))
	{
		query1 = "SELECT ItemID, Iname, Iprice FROM item WHERE Iname LIKE \'%" + input + "%\'";
	}
	else if(SearchOn.equals("2"))
	{
		query1 = "SELECT I.ItemID, I.Iname, I.Iprice FROM item I, provider P WHERE I.Iprovider = P.Pid AND P.Pname LIKE \'%" + input + "%\'";
	}
	else if (SearchOn.equals("3"))
	{
		query1 = "SELECT I.ItemID, I.Iname, I.Iprice FROM item I, provider P WHERE I.Iprovider = P.Pid AND P.Plocation LIKE \'%" + input + "%\'";
	}
	else
	{
		System.out.println(SearchOn);
		System.out.println(input);
		System.out.println("check select");
	}
%>
    <br/> <h4>ITEM LIST</h4>
<%  
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();
	out.println("<div align=\"center\">");
	out.println("<table class=table table-hover align=\"center\" border=\"1\">");
	out.println("<th>Name</th>");
	out.println("<th>Price</th>");
	while(rs.next()){
		out.println("<tr align=\"center\" onclick=\"location.href=\'showitemdetail.jsp?ItemID=" + rs.getString(1) +"\'\">");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("</tr>");
	}
	out.println("</table>");
	out.println("</div>");
	pstmt.close();
	conn.close();
%>

</body>
</html>
