<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<%
	String DBname = "hak";
	String url = "jdbc:mysql://localhost/"+DBname;
	String user = "knu";
	String pass = "comp322";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,pass);
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String query1 = "SELECT Cusname, Cusid, Cuspw FROM customer WHERE Cusid = \""+id+"\" AND Cuspw = \""+pw+"\"";
	String redirectURL = "login.jsp?error=login-failed..";

	pstmt = conn.prepareStatement(query1);
	rs = pstmt.executeQuery();
	rs.last();
	
	int cnt = rs.getRow();
	rs.first();
	if(cnt == 1)
	{
		String Cusname = rs.getString(1);
		redirectURL = "main.html?id="+Cusname;
	}
	else
	{
		out.println("<script>alert('ID 또는 비밀번호가 틀렸습니다.');history.back();</script>");
	}
	
	response.sendRedirect(redirectURL);
%>
</body>
</html>