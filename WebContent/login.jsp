<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<h2>�α���</h2>
	<br>
	<form action = "authentication.jsp" method="post">
		<div class="form-group">
		  <label for="exampleInputEmail1">���̵�</label>
		  <input name = "id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter ID">
		  <small id="emailHelp" class="form-text text-muted">�̸��� ������ �ƴ� ���̵� �Է��� �ּ���.</small>
		</div>
		<div class="form-group">
		  <label for="exampleInputPassword1">��й�ȣ</label>
		  <input name = "pw" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		</div>
		<button type="submit" class="btn btn-primary">�α���</button>
		
		<!-- <label>���̵� : </label>
		<input name = "id" type = "text"><br>
		<label>�н����� : </label>
		<input name = "pw" type = "password"><br>
		<input type = "button" value = "register" onclick="location.href='register.jsp'">
		<input type = "submit" value = "login"> -->
	</form>
<% if (request.getParameter("error") == null ) { %>
	<h4>Please Login..</h4>
<% } else { %>
	<font color = "red"><%= request.getParameter("error") %></font>
<% } %>
</body>
</html>