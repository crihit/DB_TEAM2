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
		<button type="button" onclick="location.href='salesInfo.jsp'" class="btn btn-secondary">�����ڸ޴�</button>
		</div>
	<%	
		}
		else
		{
			%>	
				<button type="button" onclick="location.href='userInfo.jsp'" class="btn btn-secondary">ȸ������</button>
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
			out.println("<h5>���������� ���Ե��� ���� �ֹ��Ͻ� ��ǰ�Դϴ�.</h5>");
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
			      <th colspan="3" onclick="location.href='showitems.jsp?catIdx=___'">ī�װ�</th>
			    </tr>
			    <tr>
			    	<th onclick="location.href='showitems.jsp?catIdx=1__'">����/�߰�</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=2__'">����/Ŀ��</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=3__'">����/���</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
					<td onclick="location.href='showitems.jsp?catIdx=101'">���/��</td>
					<td onclick="location.href='showitems.jsp?catIdx=201'">����</td>
					<td onclick="location.href='showitems.jsp?catIdx=301'">�������</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">����/�Ѷ��</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">����/��ä����</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">�Ұ��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">��/����</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">Ŀ��/Ƽ</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">�߰��</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form>
	<div>
		<form class="form-inline my-2 my-lg-0 justify-content-end" action = "search.jsp" method="POST">
			<select class="custom-select mr-sm-2" name = "SearchOn">
				<option value="1" selected>��ǰ�̸�</option>
				<option value="2">������</option>
				<option value="3">������</option>
			</select>
			<input class="form-control mr-sm-2" type="search" placeholder="�˻�" name = "input">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">�˻�</button>
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
	
		<h4>��ǰ��ȸ</h4>
		��з�: <select name = "1cat" onchange="search(this)">
			<option value = "_" selected>��ü����</option>
			<option value = "1">����/�߰�</option>
			<option value = "2">����/Ŀ��</option>
			<option value = "3">����/���</option>
		</select>
		�Һз�: <select name = "2-1cat" style="display: none;">
			<option value = "_" selected>��ü����</option>
			<option value = "1">����/�߰�</option>
			<option value = "2">����/Ŀ��</option>
			<option value = "3">����/���</option>
		</select>
		<input type = "submit" value="ã��"/>
	</form> -->
	
<!-- 	<form action = "showitems.jsp" method = "POST">
		<div align="center">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th colspan="2">ī�װ� </th>
			    </tr>
			    <tr>
			    	<th>��з�</th>
			    	<th>�Һз�</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=1__'">����/�߰�</th>
			      <td onclick="location.href='showitems.jsp?catIdx=101'">���/��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">����/�Ѷ��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">��/����</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=2__'">����/Ŀ��</th>
			      <td onclick="location.href='showitems.jsp?catIdx=201'">����</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">����/��ä����</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">Ŀ��/Ƽ</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=3__'">����/���</th>
			      <td onclick="location.href='showitems.jsp?catIdx=301'">�������</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">�Ұ��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">�߰��</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form> -->
	
	