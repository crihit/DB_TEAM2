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
	Statement stmt;
	ResultSet rs;
	Connection conn = ConnectDB.getConnection();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String loginQuery = "SELECT Cusname, Cusid, Cuspw FROM customer WHERE Cusid = \""+id+"\" AND Cuspw = \""+pw+"\"";
	String redirectURL = "login.jsp?error=login-failed..";

	stmt = conn.createStatement();
	//rs = stmt.executeQuery(loginQuery);
	rs = stmt.executeQuery(loginQuery);
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
		%><script type = "text/javascript">
		alert('ID 또는 비밀번호가 틀렸습니다.');
		history.back();</script><%
	}
	
	response.sendRedirect(redirectURL);
%>
</body>
</html>