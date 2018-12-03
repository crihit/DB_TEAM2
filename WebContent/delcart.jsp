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
	try{
	conn = ConnectDB.getConnection();
	conn.setAutoCommit(false);
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

	query1 = "DELETE FROM putin WHERE CartID = "+ CartID +" AND ItemID = "+ ItemID;
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

	String redirectURL = "showcart.jsp";
	response.sendRedirect(redirectURL);
%>
</body>
</html>
