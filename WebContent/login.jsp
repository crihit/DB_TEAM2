<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team2 Market</title>
</head>
<body>
<form action = "authentication.jsp" method="post">
	<label>ID: </label>
	<input name = "id" type = "text"><br>
	<label>PW: </label>
	<input name = "pw" type = "password"><br>
	
	<input type = "button" value = "register" onclick="location.href='register.jsp'">
	<input type = "submit" value = "login">
</form>
<% if (request.getParameter("error") == null ) { %>
	<h4>Please Login..</h4>
<% } else { %>
	<font color = "red"><%= request.getParameter("error") %></font>
<% } %>
</body>
</html>