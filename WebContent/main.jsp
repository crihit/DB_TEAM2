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
	    function firstChange() {// ��з� ���� ���
	    	 var x = document.form1.first.options.selectedIndex;//������ �ε���
	    	 var groups=document.form1.first.options.length;//��з� ����
	    	 var group=new Array(groups);//�迭 ����
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
			      <th colspan="3" onclick="location.href='showitems.jsp?catIdx=___'">ī�װ�</th>
			    </tr>
			    <tr>
			    	<th onclick="location.href='showitems.jsp?catIdx=1__'">����/�߰�</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=2__'">����/Ŀ��</th>
			    	<th onclick="location.href='showitems.jsp?catIdx=3__'">����/���</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
					<td onclick="location.href='showitems.jsp?catIdx=101'">���/��</td>
					<td onclick="location.href='showitems.jsp?catIdx=201'">����</td>
					<td onclick="location.href='showitems.jsp?catIdx=301'">�������</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">����/�Ѷ��</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">����/��ä����</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">�Ұ��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">��/����</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">Ŀ��/Ƽ</td>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">�߰��</td>
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
	
		<h4>��ǰ��ȸ</h4>
		��з�: <select name = "1cat" onchange="search(this)">
			<option value = "_" selected>��ü����</option>
			<option value = "1">����/�߰�</option>
			<option value = "2">����/Ŀ��</option>
			<option value = "3">����/���</option>
		</select>
		�Һз�: <select name = "2-1cat" style="display: none;">
			<option value = "_" selected>��ü����</option>
			<option value = "1">����/�߰�</option>
			<option value = "2">����/Ŀ��</option>
			<option value = "3">����/���</option>
		</select>
		<input type = "submit" value="ã��"/>
	</form> -->
	
<!-- 	<form action = "showitems.jsp" method = "POST">
		<div align="center">
			<table class="table table-bordered">
			  <thead>
			    <tr>
			      <th colspan="2">ī�װ� </th>
			    </tr>
			    <tr>
			    	<th>��з�</th>
			    	<th>�Һз�</th>
			    </tr>
			  </thead>
			  <tbody align="center">
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=1__'">����/�߰�</th>
			      <td onclick="location.href='showitems.jsp?catIdx=101'">���/��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=102'">����/�Ѷ��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=103'">��/����</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=2__'">����/Ŀ��</th>
			      <td onclick="location.href='showitems.jsp?catIdx=201'">����</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=202'">����/��ä����</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=203'">Ŀ��/Ƽ</td>
			    </tr>
			    <tr>
			      <th rowspan="3" onclick="location.href='showitems.jsp?catIdx=3__'">����/���</th>
			      <td onclick="location.href='showitems.jsp?catIdx=301'">�������</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=302'">�Ұ��</td>
			    </tr>
			    <tr>
			    	<td onclick="location.href='showitems.jsp?catIdx=303'">�߰��</td>
			    </tr>
			  </tbody>
			</table>
		</div>
	</form> -->
	
	