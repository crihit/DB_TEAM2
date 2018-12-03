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
	<h1 onclick="location.href='main.jsp'" align="center">TEAM2 MARKET</h1>
<%
	Connection conn = ConnectDB.getConnection();
	PreparedStatement pstmt;
	ResultSet rs;
	int alltotal = 0;
	String Cusid = (String)session.getAttribute("Cusid");
	String query1 = "SELECT I.ItemID, I.Iname, I.Iprice, P.Icount FROM item I, putin P, nowcart T WHERE T.Cusid = \'" + Cusid + "\' AND P.CartID = T.CartID AND I.ItemID = P.ItemID";
%>
    <br/> <h4>CART</h4>
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
	out.println("<thead><th align=\"center\">Name</th>");
	out.println("<th align=\"center\">Price</th>");
	out.println("<th align=\"center\">Quantity</th>");
	out.println("<th align=\"center\">Total</th>");
	out.println("<th align=\"center\">Delete</th></thead><tbody>");
	while(rs.next()){
		String ItemID = rs.getString(1);
		out.println("<form action = \"delcart.jsp\" method=\"POST\">");
		out.println("<tr align=\"center\">");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td>"+ (rs.getInt(3) * rs.getInt(4)) +"</td>");
		alltotal += (rs.getInt(3) * rs.getInt(4));
		out.println("<td><button class=\"btn btn-outline-danger my-2 my-sm-0\" type=\"submit\" name = \"ItemID\" value = \"" + ItemID + "\">Delete</button></td>");
		out.println("</tr>");
		out.println("</form>");
	}
	out.println("</tbody></table>");
	out.println("</div>");
	conn.close();
%>
	<div>
		<form class="form-inline my-2 my-lg-0 justify-content-end" action = "order.jsp" method="POST">
			<fieldset disabled>
				<input class="form-control mr-sm-2" type="search" placeholder="Total Price = <%out.print(alltotal); %>" name = "input">
			</fieldset>
			<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">주문</button>
	    </form>
    </div>
</body>
</html>
