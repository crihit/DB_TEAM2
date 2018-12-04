<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page language="java"
	import="java.text.*,java.sql.*,phase3.DB.ConnectDB"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Team2 Market</title>
</head>
<body>
	<h1 align="center" class="display-3"
		onclick="location.href='login.jsp'">TEAM2 MARKET</h1>
	<br>
	<%
		String Cusid = (String) session.getAttribute("Cusid");
		if (Cusid == null || Cusid.equals(""))
			response.sendRedirect("login.jsp");
		else if (Cusid.equals("admin")) {
			Connection conn = ConnectDB.getConnection();
			PreparedStatement pstmt;
			ResultSet rs;
			int alltotal = 0;
			int count = 0;
			String query1 = "SELECT I.ItemID, I.Iname, I.Iprice, P.Icount FROM item I, putin P, nowcart T WHERE T.Cusid = \'"
					+ Cusid + "\' AND P.CartID = T.CartID AND I.ItemID = P.ItemID";
			request.setCharacterEncoding("euc-kr");
	%>
	<br>
	<h4>CART</h4>
	<%
		pstmt = conn.prepareStatement(query1);
			rs = pstmt.executeQuery();
			out.println("<div align=\"center\">");
			out.println("<table class=\"table table-hover table-bordered\" align=\"center\" border=\"1\">");

			out.println("<thead><th align=\"center\">#</th>");
			out.println("<th align=\"center\">Name</th>");
			out.println("<th align=\"center\">Price</th>");
			out.println("<th align=\"center\">Quantity</th>");
			out.println("<th align=\"center\">Total</th>");
			out.println("<th align=\"center\">Delete</th></thead><tbody>");
			while (rs.next()) {
				String ItemID = rs.getString(1);
				out.println("<form action = \"delcart.jsp\" method=\"POST\">");
				out.println("<tr align=\"center\">");
				out.println("<td>" + ++count + "</td>");
				out.println("<td>" + rs.getString(2) + "</td>");
				out.println("<td>" + rs.getString(3) + "</td>");
				out.println("<td>" + rs.getString(4) + "</td>");
				out.println("<td>" + (rs.getInt(3) * rs.getInt(4)) + "</td>");
				alltotal += (rs.getInt(3) * rs.getInt(4));
				out.println(
						"<td><button class=\"btn btn-outline-danger my-2 my-sm-0\" type=\"submit\" name = \"ItemID\" value = \""
								+ ItemID + "\">Delete</button></td>");
				out.println("</tr>");
				out.println("</form>");
			}
			out.println("</tbody></table>");
			out.println("</div>");
			conn.close();
	%>
	<div>
		<form class="form-inline my-2 my-lg-0 justify-content-end" action="adminOrder.jsp" method="POST">
			<select name="state">
					<option value="Seoul">서울</option>
					<option value="Ulsan">울산</option>
					<option value="Daegu">대구</option>
					<option value="Busan">부산</option>
					<option value="Gwangju">광주</option>
					<option value="Daejeon">대전</option>
					<option value="Incheon">인천</option>
					<option value="Gyeonggi">경기</option>
					<option value="Gangwon">강원</option>
					<option value="Chungbuk">충북</option>
					<option value="Chungnam">충남</option>
					<option value="Jeonbuk">전북</option>
					<option value="Jeonnam">전남</option>
					<option value="Gyeongbuk">경북</option>
					<option value="Gyeongnam">경남</option>
				</select>
			<button class="btn btn-outline-primary my-2 my-sm-0" name="Cusid" value=<%out.print(Cusid);%> type="submit">주문</button>
		</form>
	</div>
	<%
		if (request.getParameter("error") == null) {} 
		else {
	%>
	<div class="alert alert-danger" role="alert">
	<%
			if (request.getParameter("error").equals("empty")) {
	%>
				<h4>장바구니가 비어있습니다.</h4>
	<%
			} else if(request.getParameter("error").equals("unknown")){
	%>
				<h4>알수없는 오류입니다. 다시 시도해 주세요.</h4>
	<% 
			}
		}
	}
	%>
	</div>
</body>
</html>