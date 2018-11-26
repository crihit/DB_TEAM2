<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.ConnectDB" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<%
	PreparedStatement pstmt;
	ResultSet rs;
	Connection conn = ConnectDB.getConnection();
	pstmt = conn.prepareStatement("INSERT INTO customer VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
	String redirectURL = "main.html";
	//check all 'not null' data inputed
	//not null : Cusid, Cuspw, Pnumber, Cusname, Azip, Astate, Acity, Astreet, Abuildnum
	if(request.getParameter("id")=="" || request.getParameter("pw")=="" || request.getParameter("Pnumber")=="" || request.getParameter("name")=="" || request.getParameter("zip")=="" || request.getParameter("state")=="" || request.getParameter("city")=="" || request.getParameter("street")=="" || request.getParameter("buildnum")=="") {
			redirectURL = "register.jsp?error=null";
	}
	response.sendRedirect(redirectURL);

%>
</body>
</html>