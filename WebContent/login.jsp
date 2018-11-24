<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<% if (request.getParameter("error") == null ) { %>
	<h1>Please Login..</h1>
<% } else { %>
	<h1><%= request.getParameter("error") %></h1>
<% } %>

<form action = "authentication.jsp" method="post">
	<label>ID: </label>
	<input name = "id" type = "text"><br>
	<label>PW: </label>
	<input name = "pw" type = "password"><br>
	
	<input type = "submit" value = "login">
</form>
</body>
</html>