<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page language = "java" import="java.text.*,java.sql.*,phase3.DB.ConnectDB" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Team2 Market</title>
</head>
<body>
<%
	String Cusid = "temp";
	Cusid = (String)session.getAttribute("Cusid");
	System.out.println(Cusid);
	if(Cusid == null || Cusid.equals(""))
		response.sendRedirect("login.jsp");
	else if(Cusid.equals("admin")){
		response.sendRedirect("main.jsp");
	}else{
		Connection conn = ConnectDB.getConnection();
		Statement stmt = conn.createStatement();
		String sex, Pnumber, name, job, state, city, street, lastadd, age;
		int zipNum, buildnum;
		
		if(request.getParameter("sex").equals("default")) {
			sex = "null";
		}
		else{
			if(request.getParameter("sex").equals("MALE"))
				sex = "\'M\'";
			else
				sex = "\'F\'";
		}
		Pnumber = "\""+request.getParameter("Pnumber")+"\"";
		name = "\""+request.getParameter("name")+"\"";
		if(request.getParameter("age").equals("")) {
			age = "null";
		}
		else{
			age = request.getParameter("age");
		}
		if(request.getParameter("job").equals("")) {
			job = "null";
		}
		else{
			job = "\""+request.getParameter("job")+"\"";
		}
		/* pstmt.setInt(8, Integer.parseInt(request.getParameter("zip")));
		pstmt.setString(9, request.getParameter("state")); */
		zipNum = Integer.parseInt(request.getParameter("state"));
		switch(zipNum){
		case 12345:
			state = "\""+"Ulsan"+"\"";
			break;
		case 12333:
			state = "\""+"Daegu"+"\"";
			break;
		case 12444:
			state = "\""+"Busan"+"\"";
			break;
		case 12555:
			state = "\""+"Gwangju"+"\"";
			break;
		case 12666:
			state = "\""+"Daejeon"+"\"";
			break;
		case 12777:
			state = "\""+"Incheon"+"\"";
			break;
		case 12888:
			state = "\""+"Seoul"+"\"";
			break;
		case 12999:
			state = "\""+"Gyeonggi"+"\"";
			break;
		case 13111:
			state = "\""+"Gangwon"+"\"";
			break;
		case 13222:
			state = "\""+"Chungbuk"+"\"";
			break;
		case 13333:
			state = "\""+"Chungnam"+"\"";
			break;
		case 13444:
			state = "\""+"Jeonbuk"+"\"";
			break;
		case 13555:
			state = "\""+"Jeonnam"+"\"";
			break;
		case 13666:
			state = "\""+"Gyeongbuk"+"\"";
			break;
		case 13777:
			state = "\""+"Gyeongnam"+"\"";
			break;
			default:
				state = "null";
		}
		city = "\""+request.getParameter("city")+"\"";
		street = "\""+request.getParameter("street")+"\"";
		buildnum = Integer.parseInt(request.getParameter("buildnum"));
		if(request.getParameter("lastadd").equals("")) {
			lastadd = "null";
		}
		else{
			lastadd = "\""+request.getParameter("lastadd")+"\"";
		}
		
		
		String Query = "UPDATE customer SET Sex = "+sex+", Pnumber = "+Pnumber+", Cusname = "+name+", Age = "+age+", Job = "+job+", Azip = "+zipNum+", Astate = "+state+", Acity = "+city+", Astreet = "+street+", Abuildnum = "+buildnum+", Alastadd = "+lastadd+" WHERE Cusid = \""+Cusid+"\"";
		System.out.println(Query);
		stmt.executeUpdate(Query);
		
		response.sendRedirect("userInfo.jsp");
	}
%>
</body>
</html>