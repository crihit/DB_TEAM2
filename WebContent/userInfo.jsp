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
			<div align = "center">
				<button type="button" class="btn btn-outline-secondary" onclick="location.href='editUserInfo.jsp'">ȸ����������</button>	
				<button type="button" class="btn btn-outline-danger" onclick="location.href='editUserPass.jsp'">��й�ȣ����</button>
			</div>
			<table class="table table-striped">
 				<tbody align = "center">
 			<%
 			if(rs.next()){
					out.println("<tr>");//sex
					out.println("<th scope=\"col\">"+"����"+"</th>");
					if(rs.getString(3)==null)
						out.println("<td>"+"���Է�"+"</td>");
					else
						out.println("<td>"+rs.getString(3)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//Pnumber
					out.println("<th scope=\"col\">"+"��ȭ��ȣ"+"</th>");
					out.println("<td>"+rs.getString(4)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//cusname
					out.println("<th scope=\"col\">"+"�̸�"+"</th>");
					out.println("<td>"+rs.getString(5)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//age
					out.println("<th scope=\"col\">"+"����"+"</th>");
					if(rs.getString(6)==null)
						out.println("<td>"+"���Է�"+"</td>");
					else
						out.println("<td>"+rs.getString(6)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//job
					out.println("<th scope=\"col\">"+"����"+"</th>");
					if(rs.getString(7)==null)
						out.println("<td>"+"���Է�"+"</td>");
					else
						out.println("<td>"+rs.getString(7)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//zip
					out.println("<th scope=\"col\">"+"ZIP"+"</th>");
					out.println("<td>"+rs.getInt(8)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//state
					out.println("<th scope=\"col\">"+"Ư����/������/��"+"</th>");
					out.println("<td>"+rs.getString(9)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//city
					out.println("<th scope=\"col\">"+"��/��/��"+"</th>");
					out.println("<td>"+rs.getString(10)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//street
					out.println("<th scope=\"col\">"+"���θ�"+"</th>");
					out.println("<td>"+rs.getString(11)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//buildnum
					out.println("<th scope=\"col\">"+"�ǹ���ȣ"+"</th>");
					out.println("<td>"+rs.getInt(12)+"</td>");
					out.println("</tr>");
					
					out.println("<tr>");//lastadd
					out.println("<th scope=\"col\">"+"�������ּ�"+"</th>");
					if(rs.getString(13)==null)
						out.println("<td></td>");
					else
						out.println("<td>"+rs.getString(13)+"</td>");
					out.println("</tr>");
 			}
			%>
				</tbody>
			</table>
			<%
		}
%>
</body>
</html>