<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.ConnectDB,javax.naming.NamingException" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<title>Team2 Market</title>
</head>
<body>
	<h1 onclick="location.href='main.jsp'">TEAM2 MARKET</h1>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;
	String redirectURL = "main.jsp";

	conn = ConnectDB.getConnection();
	String ItemID = request.getParameter("ItemID");
	String Inum = request.getParameter("Inum");
	String Cusid = "temp";
	Cusid = (String)session.getAttribute("Cusid");
	String CartID = null;
	String query1 = "SELECT CartID FROM nowcart WHERE Cusid = \'" + Cusid +"\'";
	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();
	rs.next();
	CartID = rs.getString(1);

	Statement stmt;
	query1 = "SELECT * FROM putin P WHERE P.CartID = " + CartID +" AND P.ItemID = " + ItemID;
	stmt = conn.createStatement();
	rs = stmt.executeQuery(query1);
	rs.last();
	int cnt = rs.getRow();
	rs.first();
	conn.close();
	if(cnt == 1)
	{
		redirectURL = "showitemdetail.jsp?ItemID=" + ItemID +"&error=already";
		response.sendRedirect(redirectURL);
	}else{
		conn.close();
		try{
			conn = ConnectDB.getConnection();
			conn.setAutoCommit(false);
			query1 = "INSERT INTO putin VALUES ("+CartID+","+ItemID+","+Inum+")";
			pstmt2 = conn.prepareStatement(query1);
			pstmt2.executeUpdate();
			conn.commit();
		}  catch (ClassNotFoundException | SQLException sqle) {
			conn.rollback();
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try {
				if ( pstmt != null) { pstmt.close(); pstmt=null; }
				if (conn != null) { conn.close(); conn=null; }
			} catch(Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		response.sendRedirect(redirectURL);
	}
%>
</body>
</html>
