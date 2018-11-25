<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<form action = "regiPro.jsp" method="post">
	<label>ID: </label>
	<input name = "id" type = "text"><br>
	<label>PW: </label>
	<input name = "pw" type = "password"><br>
	<label>Name: </label>
	<input name = "name" type = "text"><br>
	<label>Phone number: </label>
	<input name = "Pnumber" type = "text"><br>
	<label>Job: </label>
	<input name = "job" type = "text"><br>
	<label>Age: </label>
	<input name = "age" type = "text"><br>
	
	<input type = "submit" value = "regist">
</form>
</body>
</html>