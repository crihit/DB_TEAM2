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
	<h1 onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>
<form action = "incomeView.jsp?case=1" method="post">
<h3>��ü ���� ��ȸ</h3><br>
	<button type="submit" class="btn btn-primary">����</button><br>
</form>
	
<form action = "incomeView.jsp?case=2" method="post">
<h3>�Ѵ� ���� ��ȸ</h3><br>
	<label>�⵵: </label>
	<input name = "year" type = "text" value = "2018">
	<label>��: </label>
	<input name = "month" type = "text" value = "1">
	<button type="submit" class="btn btn-primary">����</button><br>
</form>

<form action = "incomeView.jsp?case=3" method="post">
<h3>�Ϸ� ���� ��ȸ</h3><br>
	<label>�⵵: </label>
	<input name = "year" type = "text" value = "2018">
	<label>��: </label>
	<input name = "month" type = "text" value = "1">
	<label>��: </label>
	<input name = "day" type = "text" value = "1">
	<button type="submit" class="btn btn-primary">����</button><br>
</form>

</body>
</html>