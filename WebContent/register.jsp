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
	<h1 onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>
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
<% if (request.getParameter("error") == null ) {} else{ %>
	<div class="alert alert-danger" role="alert">
<%  if (request.getParameter("error").equals("null")){ %>
	<h4>�ʼ��Է¶��� ��� ä���ּ���.</h4>
<% } else if (request.getParameter("error").equals("already")){ %>
	<h4>ID�� �̹� �����մϴ�. �ٸ� ���̵� �Է��� �ּ���.</h4>
<% } else if (request.getParameter("error").equals("unknown")){ %>
	<h4>�˼����� ������ �߻��߽��ϴ�. �ٽ� �õ��� �ּ���.</h4>
<% }
}
%>
</div>
</body>
</html>