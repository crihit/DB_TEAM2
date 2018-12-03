<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.*,javax.naming.NamingException" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<%
	PreparedStatement pstmt;
	int rs;
	Connection conn = null;
	String redirectURL = "main.html";
	Statement stmt = null;
	try{
		conn = ConnectDB.getConnection();
		conn.setAutoCommit(false);
		pstmt = conn.prepareStatement("INSERT INTO customer VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
		//check all 'not null' data inputed
		//not null : Cusid, Cuspw, Pnumber, Cusname, Azip, Astate, Acity, Astreet, Abuildnum
		if(request.getParameter("id")=="" || request.getParameter("pw")=="" || request.getParameter("Pnumber")=="" || request.getParameter("name")=="" || request.getParameter("zip")=="" || request.getParameter("state")=="" || request.getParameter("city")=="" || request.getParameter("street")=="" || request.getParameter("buildnum")=="") {
				redirectURL = "register.jsp?error=null";
				response.sendRedirect(redirectURL);
		}
		if(!ConnectDB.checkID(request.getParameter("id"))){
			redirectURL = "register.jsp?error=already";
			response.sendRedirect(redirectURL);
		}
		pstmt.setString(1, request.getParameter("id"));
		pstmt.setString(2, request.getParameter("pw"));
		if(request.getParameter("sex")=="default") {
			pstmt.setNull(3, Types.CHAR);
		}
		else{
			if(request.getParameter("sex")=="MALE")
				pstmt.setString(3, "M");
			else
				pstmt.setString(3, "F");
		}
		pstmt.setString(4, request.getParameter("Pnumber"));
		pstmt.setString(5, request.getParameter("name"));
		if(request.getParameter("age")=="") {
			pstmt.setNull(6, Types.INTEGER);
		}
		else{
			pstmt.setInt(6, Integer.parseInt(request.getParameter("age")));
		}
		if(request.getParameter("job")=="") {
			pstmt.setNull(7, Types.VARCHAR);
		}
		else{
			pstmt.setString(7, request.getParameter("job"));
		}
		pstmt.setInt(8, Integer.parseInt(request.getParameter("zip")));
		pstmt.setString(9, request.getParameter("state"));
		pstmt.setString(10, request.getParameter("city"));
		pstmt.setString(11, request.getParameter("street"));
		pstmt.setInt(12, Integer.parseInt(request.getParameter("buildnum")));
		if(request.getParameter("lastadd")=="") {
			pstmt.setNull(13, Types.VARCHAR);
		}
		else{
			pstmt.setString(13, request.getParameter("lastadd"));
		}
	
		rs = pstmt.executeUpdate();
/* 		conn.close();
		conn = ConnectDB.getConnection();
		conn.setAutoCommit(false); */
		stmt = conn.createStatement();
		String userName = request.getParameter("id");
		int cartNum = ConnectDB.checkCartNum();
		String makeCart = "INSERT INTO cart VALUES ("+cartNum+",\""+userName+"\")";
		stmt.executeUpdate(makeCart);
		String nowCart = "INSERT INTO nowcart VALUES ("+cartNum+",\""+userName+"\")";
		stmt.executeUpdate(nowCart);
		conn.commit();
		
	} catch (ClassNotFoundException | SQLException sqle) {
		conn.rollback();
		
		throw new RuntimeException(sqle.getMessage());
	} finally {
		try {
			if ( stmt != null) { stmt.close(); stmt=null; }
			if (conn != null) { conn.close(); conn=null; }
		} catch(Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}
	redirectURL = "login.jsp";
	response.sendRedirect(redirectURL);

%>
</body>
</html>