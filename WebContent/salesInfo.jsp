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
<h3>전체 매출 조회</h3><br>
	<button type="submit" class="btn btn-primary">보기</button><br>
</form>
	
<form action = "incomeView.jsp?case=2" method="post">
<h3>한달 매출 조회</h3><br>
	<label>년도: </label>
	<input name = "year" type = "text" value = "2018">
	<label>월: </label>
	<input name = "month" type = "text" value = "1">
	<button type="submit" class="btn btn-primary">보기</button><br>
</form>

<form action = "incomeView.jsp?case=3" method="post">
<h3>하루 매출 조회</h3><br>
	<label>년도: </label>
	<input name = "year" type = "text" value = "2018">
	<label>월: </label>
	<input name = "month" type = "text" value = "1">
	<label>일: </label>
	<input name = "day" type = "text" value = "1">
	<button type="submit" class="btn btn-primary">보기</button><br>
</form>

</body>
</html>