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
		<h3>* ǥ�ð� �ִ� �׸��� �ʼ��Է� �׸��Դϴ�.</h3>
		<label>*ID: </label>
		<input name = "id" type = "text">
		<label>*PW: </label>
		<input name = "pw" type = "password"><br>
		<label>*�̸�: </label>
		<input name = "name" type = "text">
		<label>*��ȭ��ȣ: </label>
		<input name = "Pnumber" type = "text"><br>
		<label>����: </label>
		<input name = "job" type = "text">
		<label>����: </label>
		<input name = "age" type = "text"><br>
		<label>����: </label>
		<input name = "sex" type = "radio" value = "MALE">��
		<input name = "sex" type = "radio" value = "FEMALE">��
		<input name = "sex" type = "radio" value = "default" checked = "checked">�̼���<br>
		<!-- <div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="sex" id="inlineRadio1" value="MALE">
			<label class="form-check-label" for="inlineRadio1">��</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="sex" id="inlineRadio2" value="FEMALE">
			<label class="form-check-label" for="inlineRadio2">��</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="radio" name="sex" id="inlineRadio3" value="default" checked = "checked">
			<label class="form-check-label" for="inlineRadio3">�̼���</label>
		</div><br> -->
			<label>*������/Ư����/��: </label>
				<select name="state">
				<option value="12888" selected>����</option>
				<option value="12345">���</option>
				<option value="12333">�뱸</option>
				<option value="12444">�λ�</option>
				<option value="12555">����</option>
				<option value="12666">����</option>
				<option value="12777">��õ</option>
				<option value="12999">���</option>
				<option value="13111">����</option>
				<option value="13222">���</option>
				<option value="13333">�泲</option>
				<option value="13444">����</option>
				<option value="13555">����</option>
				<option value="13666">���</option>
				<option value="13777">�泲</option>
			</select>
		<label>*��/��/��: </label>
		<input name = "city" type = "text"><br>
		<label>*���θ�: </label>
		<input name = "street" type = "text">
		<label>*�ǹ���ȣ: </label>
		<input name = "buildnum" type = "text">
		<label>���ּ�: </label>
		<input name = "lastadd" type = "text"><br>
		
		<button type = "submit" class="btn btn-success">����</button>
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