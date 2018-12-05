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
	<h1 align = "center" class="display-3" onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>
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

<br><br>
<h1 class="display-4">지역별 재고가 부족한 상품조회</h1><br/>
<div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
  <div class="btn-group mr-2" role="group" aria-label="First group">
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Seoul'">서울</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Ulsan'">울산</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Daegu'">대구</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Busan'">부산</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gwangju'">광주</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Daejeon'">대전</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Incheon'">인천</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeonggi'">경기</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gangwon'">강원</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Chungbuk'">충북</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Chungnam'">충남</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Jeonbuk'">전북</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Jeonnam'">전남</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeongbuk'">경북</button>
    <button type="button" class="btn btn-secondary" onclick="location.href='showShortage.jsp?state=Gyeongnam'">경남</button>
  </div>
</div>
</body>
</html>