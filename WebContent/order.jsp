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
	PreparedStatement pstmt, pstmt2;
	ResultSet rs, rs2;
	int alltotal = 0;
	int count = 0;
	String Cusid = (String)session.getAttribute("Cusid");
	if(Cusid == null || Cusid.equals(""))
		response.sendRedirect("login.jsp");
	String query1 = "SELECT C.Astate, R.RID FROM customer C, retailer R WHERE C.Cusid = \'" + Cusid + "\'";
	String query2 = "";
	String redirectURL = "showcart.jsp";
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();
	rs.next();
	String Astate = rs.getString(1);
	int RID = rs.getInt(2);
	
	query1 = "SELECT I.ItemID, I.Iname, I.Iprice, P.Icount FROM item I, putin P, nowcart T WHERE T.Cusid = \'" + Cusid + "\' AND P.CartID = T.CartID AND I.ItemID = P.ItemID";
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();
	
	rs.last();
	int cnt = rs.getRow();
	rs.first();
 	if(cnt == 0)
	{
		redirectURL = "showcart.jsp?error=empty";
		response.sendRedirect(redirectURL);
	} else {
		
		while(rs.next()){
			int ItemID = rs.getInt(1);
			String Iname = rs.getString(2);
			int Iprice = rs.getInt(3);
			int Icount = rs.getInt(4);
			++count;
			
			query2 = "SELECT S.Icount FROM stores S WHERE S.RID = " + RID + " AND S.ItemID = "+ ItemID;
			pstmt2 = conn.prepareStatement(query2);
			rs2 = pstmt2.executeQuery();
			rs2.next();
			int sIcount = rs2.getInt(1);
			
			if((sIcount - Icount) < 0)
			{
				redirectURL = "showcart.jsp?error="+count;
				response.sendRedirect(redirectURL);
				break;
			}

			
		}
		out.println("</tbody></table>");
		out.println("</div>");
		conn.close();
	}
	%>	
</body>
</html>
