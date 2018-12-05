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
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Seoul'">����</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Ulsan'">���</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Daegu'">�뱸</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Busan'">�λ�</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gwangju'">����</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Daejeon'">����</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Incheon'">��õ</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeonggi'">���</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gangwon'">����</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Chungbuk'">���</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Chungnam'">�泲</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Jeonbuk'">����</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Jeonnam'">����</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeongbuk'">���</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeongnam'">�泲</button>
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
<h1 class="display-4">��� ������ ��ǰ - <%
	switch (request.getParameter("state")) {
	case "Seoul":
		out.println("����");
		break;
	case "Busan":
		out.println("�λ�");
		break;
	case "Ulsan":
		out.println("���");
		break;
	case "Daegu":
		out.println("�뱸");
		break;
	case "Gwangju":
		out.println("����");
		break;
	case "Daejeon":
		out.println("����");
		break;
	case "Incheon":
		out.println("��õ");
		break;
	case "Gyeonggi":
		out.println("���");
		break;
	case "Gangwon":
		out.println("����");
		break;
	case "Chungbuk":
		out.println("���");
		break;
	case "Chungnam":
		out.println("�泲");
		break;
	case "Jeonbuk":
		out.println("����");
		break;
	case "Jeonnam":
		out.println("����");
		break;
	case "Gyeongbuk":
		out.println("���");
		break;
	case "Gyeongnam":
		out.println("�泲");
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
      <th scope="col">�������</th>
      <th scope="col">�����ֹ���</th>
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