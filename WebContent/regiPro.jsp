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
		if(request.getParameter("id").equals("") || request.getParameter("pw").equals("") || request.getParameter("Pnumber").equals("") || request.getParameter("name").equals("") || request.getParameter("state").equals("") || request.getParameter("city").equals("") || request.getParameter("street").equals("") || request.getParameter("buildnum").equals("")) {
				redirectURL = "register.jsp?error=null";
				response.sendRedirect(redirectURL);
		}
		else if(!ConnectDB.checkID(request.getParameter("id"))){
			redirectURL = "register.jsp?error=already";
			response.sendRedirect(redirectURL);
		} else {
		pstmt.setString(1, request.getParameter("id"));
		pstmt.setString(2, request.getParameter("pw"));
		if(request.getParameter("sex").equals("default")) {
			pstmt.setNull(3, Types.CHAR);
		}
		else{
			if(request.getParameter("sex").equals("MALE"))
				pstmt.setString(3, "M");
			else
				pstmt.setString(3, "F");
		}
		pstmt.setString(4, request.getParameter("Pnumber"));
		pstmt.setString(5, request.getParameter("name"));
		if(request.getParameter("age").equals("")) {
			pstmt.setNull(6, Types.INTEGER);
		}
		else{
			pstmt.setInt(6, Integer.parseInt(request.getParameter("age")));
		}
		if(request.getParameter("job").equals("")) {
			pstmt.setNull(7, Types.VARCHAR);
		}
		else{
			pstmt.setString(7, request.getParameter("job"));
		}
		/* pstmt.setInt(8, Integer.parseInt(request.getParameter("zip")));
		pstmt.setString(9, request.getParameter("state")); */
		int zipNum = Integer.parseInt(request.getParameter("state"));
		switch(zipNum){
		case 12345:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Ulsan");
			break;
		case 12333:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Daegu");
			break;
		case 12444:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Busan");
			break;
		case 12555:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Gwangju");
			break;
		case 12666:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Daejeon");
			break;
		case 12777:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Incheon");
			break;
		case 12888:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Seoul");
			break;
		case 12999:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Gyeonggi");
			break;
		case 13111:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Gangwon");
			break;
		case 13222:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Chungbuk");
			break;
		case 13333:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Chungnam");
			break;
		case 13444:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Jeonbuk");
			break;
		case 13555:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Jeonnam");
			break;
		case 13666:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Gyeongbuk");
			break;
		case 13777:
			pstmt.setInt(8, zipNum);
			pstmt.setString(9, "Gyeongnam");
			break;
			default:
		}
		pstmt.setString(10, request.getParameter("city"));
		pstmt.setString(11, request.getParameter("street"));
		pstmt.setInt(12, Integer.parseInt(request.getParameter("buildnum")));
		if(request.getParameter("lastadd").equals("")) {
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
		redirectURL = "login.jsp";
		response.sendRedirect(redirectURL);
		}
	} catch (ClassNotFoundException | SQLException sqle) {
		conn.rollback();
		redirectURL = "register.jsp?error=unknown";
		response.sendRedirect(redirectURL);
		throw new RuntimeException(sqle.getMessage());
	} finally {
		try {
			if ( stmt != null) { stmt.close(); stmt=null; }
			if (conn != null) { conn.close(); conn=null; }
			
		} catch(Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}
	

%>
</body>
</html>