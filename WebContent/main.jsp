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
	<div align="right">
	<button type="button" class="btn btn-danger" onclick="location.href='logout.jsp'">Logout</button>
	<button type="button" class="btn btn-info" onclick="location.href='showcart.jsp'">Cart</button>
	<%  //String Cusid = request.getParameter("Cusid");
		String Cusid = "temp";
		Cusid = (String)session.getAttribute("Cusid");
		System.out.println(Cusid);
		if(Cusid == null || Cusid.equals(""))
			response.sendRedirect("login.jsp");
		else if(Cusid.equals("admin"))
		{
	%>	
		<button type="button" onclick="location.href='salesInfo.jsp'" class="btn btn-secondary">관리자메뉴</button>
		</div>
	<%	
		}
		else
		{
			%>	
				<button type="button" onclick="location.href='userInfo.jsp'" class="btn btn-secondary">회원정보</button>
				</div>
			<%
			Connection conn = ConnectDB.getConnection();
			PreparedStatement pstmt;
			ResultSet rs;
			String query1 = "SELECT Cusname, Astate FROM customer WHERE Cusid = \'" + Cusid + "\'";
			pstmt = conn.prepareStatement(query1);
			rs = pstmt.executeQuery();
			String cusname = "";
			String state = "";
			
			if(rs.next())
			{
			cusname = rs.getString(1);
			state = rs.getString(2);

			out.println("<h3>Welcome " + cusname + "</h3><br/>");
			out.println("<h5>같은지역의 고객님들이 많이 주문하신 상품입니다.</h5>");
			}
			query1 = "SELECT I.ItemID, I.Iname, I.Iprice\n" +
					"FROM customer C, cart T, orders O, item I, putin P\n" +
					"WHERE C.Cusid = T.Cusid\n" +
					"AND T.CartID = O.CartID\n" +
					"AND T.CartID = P.CartID\n" +
					"AND P.ItemID = I.ItemID\n" +
					"AND C.Astate = \'" + state + "\'\n" +
					"GROUP BY I.ItemID\n" +
					"ORDER BY COUNT(I.ItemID) DESC\n" +
					"LIMIT 3\n";
			pstmt = conn.prepareStatement(query1);
			rs = pstmt.executeQuery();
			out.println("<div align=\"center\">");
			out.println("<table class=\"table table-hover table-bordered\" align=\"center\" border=\"1\">");
			out.println("<thead><th align=\"center\">Name</th>");
			out.println("<th align=\"center\">Price</th></thead><tbody>");
			while(rs.next()){
				out.println("<tr align=\"center\" onclick=\"location.href=\'showitemdetail.jsp?ItemID=" + rs.getString(1) +"\'\">");
				out.println("<td>"+rs.getString(2)+"</td>");
				out.println("<td>"+rs.getString(3)+"</td>");
				out.println("</tr>");
			}
			out.println("</tbody></table>");
			out.println("</div>");
			pstmt.close();
			conn.close();
		}
	%>
	
	<form action = "showitems.jsp" method = "POST">
		<div>
			<table class="table table-bordered">
			  <thead align="center">
			    <tr>
			      <th colspan="3" onclick="location.href='showitems.jsp?catIdx=___'">카테고리</th>
			    </tr>
			    <tr>
			    	<th onclick="location.href='showitems.jsp?catIdx=1__'">과일/견과</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=2__'">음료/커피</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=3__'">정육/계란</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
					<td onclick="location.href='showitems.jsp?catIdx=101'">사과/배</td>
					<td onclick="location.href='showitems.jsp?catIdx=201'">생수</td>
					<td onclick="location.href='showitems.jsp?catIdx=301'">돼지고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">감귤/한라봉</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">과일/야채음료</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">소고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">감/곶감</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">커피/티</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">닭고기</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form>
	<div>
		<form class="form-inline my-2 my-lg-0 justify-content-end" action = "search.jsp" method="POST">
			<select class="custom-select mr-sm-2" name = "SearchOn">
				<option value="1" selected>상품이름</option>
				<option value="2">생산자</option>
				<option value="3">생산지</option>
			</select>
			<input class="form-control mr-sm-2" type="search" placeholder="검색" name = "input">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
	    </form>
    </div>
</body>
</html>

	<!-- for test -->
	
	<!-- <form action = "result.jsp" method = "POST">
		<h3>Now on test. You can print all customer</h3>
		<input type = "submit" value = "Submit" />
	</form> -->
	
	<!-- login from main page -->
	
	<!-- <div align="center">
		<form action = "login.jsp" method = "POST">
			<button type="button" class="btn btn-primary" onclick="location.href='login.jsp'">Login</button>
			<button type="button" class="btn btn-outline-success" onclick="location.href='register.jsp'">Register</button>
		</form>
	</div> -->
	
	<!-- First cat table -->
	
	<!-- <form action = "showitems.jsp" method = "POST">
	
		<h4>상품조회</h4>
		대분류: <select name = "1cat" onchange="search(this)">
			<option value = "_" selected>전체선택</option>
			<option value = "1">과일/견과</option>
			<option value = "2">음료/커피</option>
			<option value = "3">정육/계란</option>
		</select>
		소분류: <select name = "2-1cat" style="display: none;">
			<option value = "_" selected>전체선택</option>
			<option value = "1">과일/견과</option>
			<option value = "2">음료/커피</option>
			<option value = "3">정육/계란</option>
		</select>
		<input type = "submit" value="찾기"/>
	</form> -->
	
<!-- 	<form action = "showitems.jsp" method = "POST">
		<div align="center">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th colspan="2">카테고리 </th>
			    </tr>
			    <tr>
			    	<th>대분류</th>
			    	<th>소분류</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=1__'">과일/견과</th>
			      <td onclick="location.href='showitems.jsp?catIdx=101'">사과/배</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">감귤/한라봉</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">감/곶감</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=2__'">음료/커피</th>
			      <td onclick="location.href='showitems.jsp?catIdx=201'">생수</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">과일/야채음료</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">커피/티</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=3__'">정육/계란</th>
			      <td onclick="location.href='showitems.jsp?catIdx=301'">돼지고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">소고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">닭고기</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form> -->
	
	