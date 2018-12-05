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
<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Seoul'">서울</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Ulsan'">울산</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Daegu'">대구</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Busan'">부산</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gwangju'">광주</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Daejeon'">대전</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Incheon'">인천</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeonggi'">경기</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gangwon'">강원</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Chungbuk'">충북</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Chungnam'">충남</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Jeonbuk'">전북</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Jeonnam'">전남</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeongbuk'">경북</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeongnam'">경남</button>
  </div>
</div>
<%
	String state = request.getParameter("state");
	String findShortage = "SELECT DISTINCT I.Iname, I.ItemID, STORERES.Icount AS Stock, ORDERRES.ordercount AS OrderStock FROM item I, (SELECT I.ItemID, S.Icount FROM stores S, item I, retailer R WHERE I.ItemID = S.ItemID AND S.RID = R.RID AND R.Astate = \'"+state+"\') STORERES, (SELECT I.ItemID, sum(P.Icount) AS ordercount FROM nowcart T, putin P, item I, customer C WHERE T.cartID = P.cartID AND P.itemID = I.itemID AND C.Cusid = T.Cusid AND C.Astate = \'"+state+"\' GROUP BY I.ItemID) ORDERRES WHERE STORERES.itemID = I.itemID AND ORDERRES.itemID = I.itemID AND STORERES.Icount < ORDERRES.ordercount";
	Connection conn = ConnectDB.getConnection();
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery(findShortage);

%>
<br><br>
<h1 class="display-4">재고가 부족한 상품 - <%
	switch (request.getParameter("state")) {
	case "Seoul":
		out.println("서울");
		break;
	case "Busan":
		out.println("부산");
		break;
	case "Ulsan":
		out.println("울산");
		break;
	case "Daegu":
		out.println("대구");
		break;
	case "Gwangju":
		out.println("광주");
		break;
	case "Daejeon":
		out.println("대전");
		break;
	case "Incheon":
		out.println("인천");
		break;
	case "Gyeonggi":
		out.println("경기");
		break;
	case "Gangwon":
		out.println("강원");
		break;
	case "Chungbuk":
		out.println("충북");
		break;
	case "Chungnam":
		out.println("충남");
		break;
	case "Jeonbuk":
		out.println("전북");
		break;
	case "Jeonnam":
		out.println("전남");
		break;
	case "Gyeongbuk":
		out.println("경북");
		break;
	case "Gyeongnam":
		out.println("경남");
		break;
	default:
		out.println("error");
	}
%></h1><br/>
<table class="table">
  <thead class="thead-dark" align="center">
    <tr>
      <th scope="col">#</th>
      <th scope="col">ITEM</th>
      <th scope="col">지역재고</th>
      <th scope="col">예상주문량</th>
    </tr>
  </thead>
  <tbody align="center">
  <%
  int count = 1;
  while(rs.next()){
		out.println("<tr onclick=\"location.href=\'showitemdetail.jsp?ItemID=" + rs.getInt(2) +"\'\">");
		out.println("<th scope = \"row\">"+(count++)+"</th>");
		out.println("<td>" +rs.getString(1)+"</td>");
		out.println("<td>" +rs.getString(3)+"</td>");
		out.println("<td>" +rs.getString(4)+"</td>");
		out.println("</tr>");
	}%>
  </tbody>
</table>
</body>
</html>