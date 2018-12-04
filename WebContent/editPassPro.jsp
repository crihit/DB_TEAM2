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
String Cusid = "temp";
Cusid = (String)session.getAttribute("Cusid");
String tableQuery = "SELECT Cuspw FROM customer WHERE Cusid = \""+Cusid+"\"";
System.out.println(Cusid);
if(Cusid == null || Cusid.equals(""))
	response.sendRedirect("login.jsp");
else if(Cusid.equals("admin")){
	response.sendRedirect("main.jsp");
}
else{
	Connection conn = ConnectDB.getConnection();
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(tableQuery);
	
	if(rs.next()){
		String pw = rs.getString(1);
		String oldpw = request.getParameter("old");
		String newpw = request.getParameter("new");
		
		if(oldpw.equals(pw)){
			String query = "UPDATE customer SET Cuspw = \""+newpw+"\" WHERE Cusid = \""+Cusid+"\"";
			stmt.executeUpdate(query);
			stmt.close();
			conn.close();
			response.sendRedirect("userInfo.jsp");
		}else{
			response.sendRedirect("editUserPass.jsp?error=failed");
		}
	}
	else{
		response.sendRedirect("editUserPass.jsp?error=unknown");
	}
}
%>
</body>
</html>