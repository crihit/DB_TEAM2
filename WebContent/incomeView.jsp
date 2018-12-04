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
	<h1 align = "center" class="display-3" onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>
	<button type="button" onclick="location.href='salesInfo.jsp'" class="btn btn-danger">뒤로</button>
	
<%
String Cusid = "temp";
Cusid = (String)session.getAttribute("Cusid");
System.out.println(Cusid);
if(Cusid == null || Cusid.equals(""))
	response.sendRedirect("login.jsp");
else if(Cusid.equals("admin")){
	
}
else {
	response.sendRedirect("main.jsp");
}
String allIncome = "SELECT sum(B.res) FROM (SELECT sum(I.Iprice*P.Icount) AS res FROM item I, putin P, orders O WHERE O.cartID = P.cartID AND P.ItemID = I.ItemID GROUP BY O.CartID ) AS B";
String monthIncome = "SELECT sum(B.res) FROM (SELECT sum(I.Iprice*P.Icount) AS res FROM item I, putin P, orders O WHERE O.cartID = P.cartID AND P.ItemID = I.ItemID AND O.Odate >= ? AND O.Odate <= ? GROUP BY O.CartID ) AS B";
String dayIncome = "SELECT sum(B.res) FROM (SELECT sum(I.Iprice*P.Icount) AS res FROM item I, putin P, orders O WHERE O.cartID = P.cartID AND P.ItemID = I.ItemID AND O.Odate = ? GROUP BY O.CartID ) AS B";

Connection conn = ConnectDB.getConnection();
Statement stmt = conn.createStatement();
PreparedStatement mpstmt = conn.prepareStatement(monthIncome);
PreparedStatement dpstmt = conn.prepareStatement(dayIncome);
ResultSet rs = null;
String date = "";
switch(request.getParameter("case"))
{
case "1":
	rs = stmt.executeQuery(allIncome);
	date = "ALL date";
	break;
case "2":
	String a = request.getParameter("year")+"-"+request.getParameter("month")+"-01";
	String b = request.getParameter("year")+"-"+request.getParameter("month")+"-31";
	mpstmt.setString(1,a);
	mpstmt.setString(2,b);
	rs = mpstmt.executeQuery();
	date = request.getParameter("year")+"-"+request.getParameter("month");
	break;
case "3":
	String c = request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day");
	dpstmt.setString(1,c);
	rs = dpstmt.executeQuery();
	date = request.getParameter("year")+"-"+request.getParameter("month")+"-"+request.getParameter("day");
	break;
	default:
		response.sendRedirect("main.jsp");
}
if(rs == null)
{
	response.sendRedirect("main.jsp");
}
ResultSetMetaData rsmd = rs.getMetaData();
%>
<div>
<table class = "table table-bordered">
	<thead align="center">
		<tr>
			<th scope = "col">#</th>
			<th scope = "col">INCOME</th>
		</tr>
	</thead>
<tbody align="center">
<%
while(rs.next()){
	out.println("<tr>");
	out.println("<th scope = \"row\">"+date+"</th>");
	out.println("<td>"+rs.getInt(1)+"</td>");
	out.println("</tr>");
}
%>
</tbody>
</table>
</div>
</body>
</html>