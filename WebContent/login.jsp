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
<%  //String Cusid = request.getParameter("Cusid");
		String Cusid = "temp";
		Cusid = (String)session.getAttribute("Cusid");
		System.out.println(Cusid);
		if(Cusid != null)
			response.sendRedirect("main.jsp");
%>
	<h1 onclick="location.href='login.jsp'">TEAM2 MARKET</h1><br/>
	<h2>로그인</h2>
	<br>
	<form action = "authentication.jsp" method="post">
		<div class="form-group">
		  <label for="exampleInputEmail1">아이디</label>
		  <input name = "id" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter ID">
		  <small id="emailHelp" class="form-text text-muted">이메일 형식이 아닌 아이디를 입력해 주세요.</small>
		</div>
		<div class="form-group">
		  <label for="exampleInputPassword1">비밀번호</label>
		  <input name = "pw" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
		</div>
		<div align="right">
			<button type="button" class="btn btn-outline-success" onclick="location.href='register.jsp'">회원가입</button>
			<button type="submit" class="btn btn-primary">로그인</button>
		</div>
		<!-- <label>아이디 : </label>
		<input name = "id" type = "text"><br>
		<label>패스워드 : </label>
		<input name = "pw" type = "password"><br>
		<input type = "button" value = "register" onclick="location.href='register.jsp'">
		<input type = "submit" value = "login"> -->
	</form>
<% if (request.getParameter("error") == null ) { %>
<div class="alert alert-dark" role="alert">
  Please Login..
</div>
<% } else { %>
<%-- <font color = "red"><%= request.getParameter("error") %></font> --%>
 <div class="alert alert-danger" role="alert">
 Login Failed.. Check your ID or Password.
 </div>
<% } %>
</body>
</html>
