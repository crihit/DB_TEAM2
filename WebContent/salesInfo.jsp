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
	<h1 class="display-3" onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>
<form action = "incomeView.jsp?case=1" method="post">
<h3>전체 매출 조회</h3><br>
	<button type="submit" class="btn btn-primary">보기</button><br>
</form>
	
<form action = "incomeView.jsp?case=2" method="post">
<h3>한달 매출 조회</h3><br>
	<label>년도: </label>
	<input name = "year" type = "text" value = "2018">
	<label>월: </label>
	<input name = "month" type = "text" value = "1">
	<button type="submit" class="btn btn-primary">보기</button><br>
</form>

<form action = "incomeView.jsp?case=3" method="post">
<h3>하루 매출 조회</h3><br>
	<label>년도: </label>
	<input name = "year" type = "text" value = "2018">
	<label>월: </label>
	<input name = "month" type = "text" value = "1">
	<label>일: </label>
	<input name = "day" type = "text" value = "1">
	<button type="submit" class="btn btn-primary">보기</button><br>
</form>
<%
String findShortage = "SELECT DISTINCT I.Iname, I.ItemID FROM item I, (SELECT I.Iname, I.ItemID, sum(Icount) AS allcount FROM stores S, item I WHERE I.ItemID = S.ItemID GROUP BY I.ItemID) STORERES, (SELECT I.Iname, I.ItemID, sum(P.Icount) AS ordercount FROM cart T, putin P, item I WHERE T.cartID IN (SELECT T.cartID FROM cart T WHERE T.cartID NOT IN (SELECT O.cartID FROM cart T, orders O WHERE T.cartID = O.cartID)) AND T.cartID = P.cartID AND P.itemID = I.itemID GROUP BY I.ItemID) ORDERRES WHERE STORERES.itemID = I.itemID AND ORDERRES.itemID = I.itemID AND STORERES.allcount < ORDERRES.ordercount";
Connection conn = ConnectDB.getConnection();
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery(findShortage);
%>
<table class="table">
  <thead class="thead-dark" align="center">
    <tr>
      <th scope="col">#</th>
      <th scope="col">ITEM</th>
    </tr>
  </thead>
  <tbody align="center">
  <%
  int count = 1;
  while(rs.next()){
		out.println("<tr onclick=\"location.href=\'showitemdetail.jsp?ItemID=" + rs.getInt(2) +"\'\">");
		out.println("<th scope = \"row\">"+(count++)+"</th>");
		out.println("<td>" +rs.getString(1)+"</td>");
		out.println("</tr>");
	}%>
  </tbody>
</table>
</body>
</html>