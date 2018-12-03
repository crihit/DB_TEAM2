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
	String ItemID = request.getParameter("ItemID");
	String query1 = "SELECT I.Iname, I.Iprice, P.Pname, P.Plocation FROM item I, provider P WHERE I.Iprovider = P.Pid AND I.ItemID = " + ItemID;
%>
    <br/> <h4>ITEM DETAIL</h4>
<%  
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();

	rs.next();
	out.println("<div align=\"center\">");
	out.println("<table class=\"table table-hover table-bordered\" align=\"center\" border=\"1\">");
	out.println("<thead><th align=\"center\">Name</th>");
	out.println("<th align=\"center\">Price</th>");
	out.println("<th align=\"center\">Provider</th>");
	out.println("<th align=\"center\">Location</th></thead>");
	out.println("<tbody><tr align=\"center\">");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(4)+"</td>");
	out.println("</tr></tbody>");
	out.println("</table>");
	out.println("</div>");
	pstmt.close(); 
	conn.close();
%>
	<div align="right">
		<form class="form-inline my-2 my-lg-0 justify-content-end" action = "addcart.jsp" method="POST">
			<span class="btn btn-secondary mr-sm-2">수량 : </span>
			<input class="form-control mr-sm-2" type="number" min = "1" value = "1" placeholder="개수" name = "Inum">
			<%out.println("<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\" name = \"ItemID\" value = \"" + ItemID + "\" class=\"btn btn-success\">장바구니에 담기</button>"); 
			System.out.println(ItemID);%>
			<!-- <button type="submit"  class="btn btn-success">장바구니에 담기</button> -->
		</form>
	</div>
</body>
</html>
