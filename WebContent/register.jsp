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
	<h3>* ǥ�ð� �ִ� �׸��� �ʼ��Է� �׸��Դϴ�.</h3>
	<label>*ID: </label>
	<input name = "id" type = "text">
	<label>*PW: </label>
	<input name = "pw" type = "password"><br>
	<label>*Name: </label>
	<input name = "name" type = "text">
	<label>*Phone number: </label>
	<input name = "Pnumber" type = "text"><br>
	<label>Job: </label>
	<input name = "job" type = "text">
	<label>Age: </label>
	<input name = "age" type = "text"><br>
	<label>Sex: </label>
	<input name = "sex" type = "radio" value = "MALE">MALE
	<input name = "sex" type = "radio" value = "FEMALE">FEMALE
	<input name = "sex" type = "radio" value = "default" checked = "checked">DEFAULT<br>
	<label>*ZIP: </label>
	<input name = "zip" type = "text">
	<label>*State: </label>
	<input name = "state" type = "text">
	<label>*City: </label>
	<input name = "city" type = "text"><br>
	<label>*Street: </label>
	<input name = "street" type = "text">
	<label>*Building Number: </label>
	<input name = "buildnum" type = "text">
	<label>Last Address: </label>
	<input name = "lastadd" type = "text">
	
	<input type = "submit" value = "����">
</form>
<% if (request.getParameter("error") == null ) { %>
	<h4></h4>
<% } else { %>
	<font color = "red">�ʼ��Է¶��� ��� ä���ּ���.</font>
<% } %>
</body>
</html>