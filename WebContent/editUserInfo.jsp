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
<form action = "editUserPro.jsp" method="post">
<h1 class="display-3" onclick="location.href='main.jsp'" align="center">TEAM2 MARKET</h1>
<%
		String Cusid = "temp";
		Cusid = (String)session.getAttribute("Cusid");
		String tableQuery = "SELECT * FROM customer WHERE Cusid = \""+Cusid+"\"";
		System.out.println(Cusid);
		if(Cusid == null || Cusid.equals(""))
			response.sendRedirect("login.jsp");
		else if(Cusid.equals("admin")){
			response.sendRedirect("main.jsp");
		}
		else{
			Connection conn = ConnectDB.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(tableQuery);
			ResultSetMetaData rsmd = rs.getMetaData();
			int cnt = rsmd.getColumnCount();
			%>
			<table class="table table-striped">
 				<tbody align = "center">
 			<%
 			if(rs.next()){
					out.println("<tr>");//sex
					out.println("<th scope=\"col\">"+"����"+"</th>");
					if(rs.getString(3)==null)
						out.println("<td><input name = \"sex\" type = \"radio\" value = \"MALE\">��<input name = \"sex\" type = \"radio\" value = \"FEMALE\">��<input name = \"sex\" type = \"radio\" value = \"default\" checked = \"checked\">�̼���</td>");
					else if(rs.getString(3).equals("M"))
						out.println("<td><input name = \"sex\" type = \"radio\" value = \"MALE\" checked = \"checked\">��<input name = \"sex\" type = \"radio\" value = \"FEMALE\">��<input name = \"sex\" type = \"radio\" value = \"default\">�̼���</td>");
					else if(rs.getString(3).equals("F"))
						out.println("<td><input name = \"sex\" type = \"radio\" value = \"MALE\">��<input name = \"sex\" type = \"radio\" value = \"FEMALE\" checked = \"checked\">��<input name = \"sex\" type = \"radio\" value = \"default\">�̼���</td>");
					out.println("</tr>");
					
					out.println("<tr>");//Pnumber
					out.println("<th scope=\"col\">"+"��ȭ��ȣ"+"</th>");
					out.println("<td><input name = \"Pnumber\" type = \"text\" value = \""+rs.getString(4)+"\"></td>");
					out.println("</tr>");
					
					out.println("<tr>");//cusname
					out.println("<th scope=\"col\">"+"�̸�"+"</th>");
					out.println("<td><input name = \"name\" type = \"text\" value = \""+rs.getString(5)+"\"></td>");
					out.println("</tr>");
					
					out.println("<tr>");//age
					out.println("<th scope=\"col\">"+"����"+"</th>");
					if(rs.getString(6)==null)
						out.println("<td><input name = \"age\" type = \"text\"></td>");
					else
						out.println("<td><input name = \"age\" type = \"text\" value = \""+rs.getString(6)+"\"></td>");
					out.println("</tr>");
					
					out.println("<tr>");//job
					out.println("<th scope=\"col\">"+"����"+"</th>");
					if(rs.getString(7)==null)
						out.println("<td><input name = \"job\" type = \"text\"></td>");
					else
						out.println("<td><input name = \"job\" type = \"text\" value = \""+rs.getString(7)+"\"></td>");
					out.println("</tr>");
					
					int zipNum = rs.getInt(8);
					out.println("<tr>");//state
					out.println("<th scope=\"col\">"+"Ư����/������/��"+"</th>");
					out.println("<td>");%>
				<select name="state">
					<option value="12888"<% if(zipNum == 12888) out.println(" selected"); %>
					>����</option>
					<option value="12345"<% if(zipNum == 12345) out.println(" selected"); %>
					>���</option>
					<option value="12333"<% if(zipNum == 12333) out.println(" selected"); %>
					>�뱸</option>
					<option value="12444"<% if(zipNum == 12444) out.println(" selected"); %>
					>�λ�</option>
					<option value="12555"<% if(zipNum == 12555) out.println(" selected"); %>
					>����</option>
					<option value="12666"<% if(zipNum == 12666) out.println(" selected"); %>
					>����</option>
					<option value="12777"<% if(zipNum == 12777) out.println(" selected"); %>
					>��õ</option>
					<option value="12999"<% if(zipNum == 12999) out.println(" selected"); %>
					>���</option>
					<option value="13111"<% if(zipNum == 13111) out.println(" selected"); %>
					>����</option>
					<option value="13222"<% if(zipNum == 13222) out.println(" selected"); %>
					>���</option>
					<option value="13333"<% if(zipNum == 13333) out.println(" selected"); %>
					>�泲</option>
					<option value="13444"<% if(zipNum == 13444) out.println(" selected"); %>
					>����</option>
					<option value="13555"<% if(zipNum == 13555) out.println(" selected"); %>
					>����</option>
					<option value="13666"<% if(zipNum == 13666) out.println(" selected"); %>
					>���</option>
					<option value="13777"<% if(zipNum == 13777) out.println(" selected"); %>
					>�泲</option>
				</select>
				<%
					out.println("</td>");
					out.println("</tr>");
					
					out.println("<tr>");//city
					out.println("<th scope=\"col\">"+"��/��/��"+"</th>");
					out.println("<td><input name = \"city\" type = \"text\" value = \""+rs.getString(10)+"\"></td>");
					out.println("</tr>");
					
					out.println("<tr>");//street
					out.println("<th scope=\"col\">"+"���θ�"+"</th>");
					out.println("<td><input name = \"street\" type = \"text\" value = \""+rs.getString(11)+"\"></td>");
					out.println("</tr>");
					
					out.println("<tr>");//buildnum
					out.println("<th scope=\"col\">"+"�ǹ���ȣ"+"</th>");
					out.println("<td><input name = \"buildnum\" type = \"text\" value = \""+rs.getInt(12)+"\"></td>");
					out.println("</tr>");
					
					out.println("<tr>");//lastadd
					out.println("<th scope=\"col\">"+"�������ּ�"+"</th>");
					if(rs.getString(13)==null)
						out.println("<td><input name = \"lastadd\" type = \"text\"></td>");
					else
						out.println("<td><input name = \"lastadd\" type = \"text\" value = \""+rs.getString(13)+"\"></td>");
					out.println("</tr>");
 			}
			%>
				</tbody>
			</table>
			<div align = "center">
				<button type="submit" class="btn btn-outline-secondary">����</button>	
				<button type="button" class="btn btn-outline-danger" onclick="location.href='userInfo.jsp'">���</button>
			</div>
			<%
		}
%>
</form>
</body>
</html>