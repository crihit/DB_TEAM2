<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
	  th {
	    vertical-align: middle;
	  }
	  td {
	    vertical-align: middle;
	  }
    </style>
    <script type="text/javascript">
	    function firstChange() {// 대분류 변한 경우
	    	 var x = document.form1.first.options.selectedIndex;//선택한 인덱스
	    	 var groups=document.form1.first.options.length;//대분류 갯수
	    	 var group=new Array(groups);//배열 생성
	    	 for (i=0; i<groups; i++) {
	    	  group[i]=new Array();
	    	 }


		</script >
	<title>Team2 Market</title>
</head>
<body>
	<h1 onclick="location.href='main.jsp'">TEAM2 MARKET</h1><br/>
	
	<form action = "showitems.jsp" method = "POST">
		<div align="center">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th colspan="3" onclick="location.href='showitems.jsp?catIdx=___'">카테고리</th>
			    </tr>
			    <tr>
			    	<th onclick="location.href='showitems.jsp?catIdx=1__'">과일/견과</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=2__'">음료/커피</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=3__'">정육/계란</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
					<td onclick="location.href='showitems.jsp?catIdx=101'">사과/배</td>
					<td onclick="location.href='showitems.jsp?catIdx=201'">생수</td>
					<td onclick="location.href='showitems.jsp?catIdx=301'">돼지고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">감귤/한라봉</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">과일/야채음료</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">소고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">감/곶감</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">커피/티</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">닭고기</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form>
	
</body>
</html>

	<!-- for test -->
	
	<!-- <form action = "result.jsp" method = "POST">
		<h3>Now on test. You can print all customer</h3>
		<input type = "submit" value = "Submit" />
	</form> -->
	
	<!-- login from main page -->
	
	<!-- <div align="center">
		<form action = "login.jsp" method = "POST">
			<button type="button" class="btn btn-primary" onclick="location.href='login.jsp'">Login</button>
			<button type="button" class="btn btn-outline-success" onclick="location.href='register.jsp'">Register</button>
		</form>
	</div> -->
	
	<!-- First cat table -->
	
	<!-- <form action = "showitems.jsp" method = "POST">
	
		<h4>상품조회</h4>
		대분류: <select name = "1cat" onchange="search(this)">
			<option value = "_" selected>전체선택</option>
			<option value = "1">과일/견과</option>
			<option value = "2">음료/커피</option>
			<option value = "3">정육/계란</option>
		</select>
		소분류: <select name = "2-1cat" style="display: none;">
			<option value = "_" selected>전체선택</option>
			<option value = "1">과일/견과</option>
			<option value = "2">음료/커피</option>
			<option value = "3">정육/계란</option>
		</select>
		<input type = "submit" value="찾기"/>
	</form> -->
	
<!-- 	<form action = "showitems.jsp" method = "POST">
		<div align="center">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th colspan="2">카테고리 </th>
			    </tr>
			    <tr>
			    	<th>대분류</th>
			    	<th>소분류</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=1__'">과일/견과</th>
			      <td onclick="location.href='showitems.jsp?catIdx=101'">사과/배</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">감귤/한라봉</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">감/곶감</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=2__'">음료/커피</th>
			      <td onclick="location.href='showitems.jsp?catIdx=201'">생수</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">과일/야채음료</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">커피/티</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=3__'">정육/계란</th>
			      <td onclick="location.href='showitems.jsp?catIdx=301'">돼지고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">소고기</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">닭고기</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form> -->
	
	