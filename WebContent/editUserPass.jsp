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
<form action = "editPassPro.jsp" method="post">
<h1 class="display-3" onclick="location.href='main.jsp'" align="center">TEAM2 MARKET</h1>
<%
String Cusid = "temp";
Cusid = (String)session.getAttribute("Cusid");
System.out.println(Cusid);
if(Cusid == null || Cusid.equals(""))
	response.sendRedirect("login.jsp");
else if(Cusid.equals("admin")){
	response.sendRedirect("main.jsp");
}
else{
	%>
<table class="table table-striped">
  <tbody align = "center">
    <tr>
      <th scope="row">���� ��й�ȣ</th>
      <td><input name = "old" type = "password"></td>
    </tr>
    <tr>
      <th scope="row">�� ��й�ȣ</th>
      <td><input name = "new" type = "password"></td>
    </tr>
  </tbody>
</table>
	<%
}
%>
<% if (request.getParameter("error") == null ) { %>
<% } else if(request.getParameter("error").equals("failed")){ %>
 <div class="alert alert-danger" role="alert">
��й�ȣ�� Ʋ���ϴ�. �ٽ� Ȯ���� �ּ���.
 </div>
<% } else if(request.getParameter("error").equals("unknown")){%>
 <div class="alert alert-danger" role="alert">
 �˼����� �����Դϴ�. �ٽ� �õ��� �ּ���.
</div>
<% }%>
<div align = "center">
	<button type="submit" class="btn btn-outline-secondary">����</button>	
	<button type="button" class="btn btn-outline-danger" onclick="location.href='userInfo.jsp'">���</button>
</div>
</form>
</body>
</html>