<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.ConnectDB,java.util.Date,java.text.SimpleDateFormat" %>
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
	String Cusid = (String)session.getAttribute("Cusid");
	String redirectURL = "";
	if(Cusid == null || Cusid.equals(""))
		response.sendRedirect("login.jsp");
	else if(Cusid.equals("admin")){
		response.sendRedirect("main.jsp");
	}else{
		Connection conn = ConnectDB.getConnection();
		Statement stmt;
		ResultSet rs, rs2;
		int alltotal = 0;
		int count = 0;
		String query1 = "SELECT C.Astate, R.RID FROM customer C, retailer R WHERE C.Cusid = \'" + Cusid + "\' AND C.Astate = R.Astate";
		String query2 = "";
		redirectURL = "showcart.jsp";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query1);
		rs.next();
		String Astate = rs.getString(1);
		int RID = rs.getInt(2);

		query1 = "SELECT I.ItemID, I.Iname, I.Iprice, P.Icount FROM item I, putin P, nowcart T WHERE T.Cusid = \'"
				+ Cusid + "\' AND P.CartID = T.CartID AND I.ItemID = P.ItemID";
		rs = stmt.executeQuery(query1);

		rs.last();
		int cnt = rs.getRow();
		rs.first();
		if (cnt == 0) {
			redirectURL = "showcart.jsp?error=empty";
			//response.sendRedirect(redirectURL);
		} else {
			System.out.println("in");
			do {
				int ItemID = rs.getInt(1);
				String Iname = rs.getString(2);
				int Iprice = rs.getInt(3);
				int Icount = rs.getInt(4);

				query2 = "SELECT S.Icount FROM stores S WHERE S.RID = " + RID + " AND S.ItemID = " + ItemID;
				Statement pstmt2 = conn.createStatement();
				rs2 = pstmt2.executeQuery(query2);
				rs2.next();
				int sIcount = rs2.getInt(1);
				System.out.println("sIcount" + sIcount + "Icount" + Icount);
				if ((sIcount - Icount) < 0) {
					redirectURL = "showcart.jsp?error=" + (count+1);
					//response.sendRedirect(redirectURL);
					break;
				}
				count++;

			}while (rs.next());

			if(cnt == count){
				rs.first();
				do{
					int ItemID = rs.getInt(1);
					String Iname = rs.getString(2);
					int Iprice = rs.getInt(3);
					int Icount = rs.getInt(4);
					count++;
		
					query2 = "SELECT S.Icount FROM stores S WHERE S.RID = " + RID + " AND S.ItemID = " + ItemID;
					Statement stmt2 = conn.createStatement();
					rs2 = stmt2.executeQuery(query2);
					rs2.next();
					int sIcount = rs2.getInt(1);
					int orderedIcount = sIcount - Icount;
					query2 = "UPDATE stores SET Icount = " + orderedIcount + " WHERE RID = " + RID + " AND ItemID = " + ItemID;
					stmt2.executeUpdate(query2);
				}while(rs.next());
				query2 = "SELECT CartID FROM nowcart WHERE Cusid = \'" + Cusid + "\'";
				rs = stmt.executeQuery(query2);
				rs.next();
				int CartID = rs.getInt(1);
				
				Date today = new Date();
				SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
				String orderdate = date.format(today);
				
				query2 = "INSERT INTO orders VALUES("+CartID+", "+RID+", \'" + orderdate + "\')";
				stmt.executeUpdate(query2);
				int cartNum = ConnectDB.checkCartNum();
				String makeCart = "INSERT INTO cart VALUES ("+cartNum+",\""+Cusid+"\")";
				stmt.executeUpdate(makeCart);
				String nowCart = "UPDATE nowcart SET CartID ="+cartNum+" WHERE Cusid =\'" + Cusid + "\'";
				stmt.executeUpdate(nowCart);
				redirectURL = "main.jsp";
				//response.sendRedirect(redirectURL);
			}
		}		
		conn.close();
	}
	response.sendRedirect(redirectURL);
%>	
</body>
</html>
