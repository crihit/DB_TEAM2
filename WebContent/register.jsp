<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="phase3.DB.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Team2 Market</title>
</head>
<body>
	<h1 align = "center" class="display-3" onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>	<form action = "regiPro.jsp" method="post">
		<h3>* 표시가 있는 항목은 필수입력 항목입니다.</h3>
		<label>*ID: </label>
		<input name = "id" type = "text">
		<label>*PW: </label>
		<input name = "pw" type = "password"><br>
		<label>*이름: </label>
		<input name = "name" type = "text">
		<label>*전화번호: </label>
		<input name = "Pnumber" type = "text"><br>
		<label>직업: </label>
		<input name = "job" type = "text">
		<label>나이: </label>
		<input name = "age" type = "text"><br>
		<label>성별: </label>
		<input name = "sex" type = "radio" value = "MALE">남
		<input name = "sex" type = "radio" value = "FEMALE">여
		<input name = "sex" type = "radio" value = "default" checked = "checked">미선택<br>
		<!-- <div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="sex" id="inlineRadio1" value="MALE">
			<label class="form-check-label" for="inlineRadio1">남</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="sex" id="inlineRadio2" value="FEMALE">
			<label class="form-check-label" for="inlineRadio2">여</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="sex" id="inlineRadio3" value="default" checked = "checked">
			<label class="form-check-label" for="inlineRadio3">미선택</label>
		</div><br> -->
			<label>*광역시/특별시/도: </label>
				<select name="state">
				<option value="12888" selected>서울</option>
				<option value="12345">울산</option>
				<option value="12333">대구</option>
				<option value="12444">부산</option>
				<option value="12555">광주</option>
				<option value="12666">대전</option>
				<option value="12777">인천</option>
				<option value="12999">경기</option>
				<option value="13111">강원</option>
				<option value="13222">충북</option>
				<option value="13333">충남</option>
				<option value="13444">전북</option>
				<option value="13555">전남</option>
				<option value="13666">경북</option>
				<option value="13777">경남</option>
			</select>
		<label>*시/군/구: </label>
		<input name = "city" type = "text"><br>
		<label>*도로명: </label>
		<input name = "street" type = "text">
		<label>*건물번호: </label>
		<input name = "buildnum" type = "text">
		<label>상세주소: </label>
		<input name = "lastadd" type = "text"><br>
		
		<button type = "submit" class="btn btn-success">가입</button>
	</form>
<% if (request.getParameter("error") == null ) {} else{ %>
	<div class="alert alert-danger" role="alert">
<%  if (request.getParameter("error").equals("null")){ %>
	<h4>필수입력란을 모두 채워주세요.</h4>
<% } else if (request.getParameter("error").equals("already")){ %>
	<h4>ID가 이미 존재합니다. 다른 아이디를 입력해 주세요.</h4>
<% } else if (request.getParameter("error").equals("unknown")){ %>
	<h4>알수없는 에러가 발생했습니다. 다시 시도해 주세요.</h4>
<% }
}
%>
</div>
</body>
</html>