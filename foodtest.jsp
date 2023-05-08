<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.ResultSet" %> 
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신상명세서 출력 현황</title>
</head>
<body>
<center><h2>신상명세서 출력 현황</h2></center>
<table width="800" border="1" align="center">
<tr>
<th>키</th>
<th>분류1</th>
<th>분류2</th>
<th>분류3</th>
<th>검색어</th>
<th>명칭</th>
<th>행정시</th>
<th>행정구</th>
<th>행정동</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨
	
	String sql = "select * from food"; //DB를 조회할 select문
	pstmt = conn.prepareStatement(sql); //sql문으로 conn
	rs = pstmt.executeQuery(); //pstmt 실행 후 결과를 rs에 할당
	
	while(rs.next()){ //조회되는 로우(행) 반복
		out.print("<tr>");
		out.print("<td>" + rs.getString("키") + "</td>"); 
	      out.print("<td>" + rs.getString("분류1") + "</td>");
	      out.print("<td>" + rs.getString("분류2") + "</td>");
	      out.print("<td>" + rs.getString("분류3") + "</td>");
	      out.print("<td>" + rs.getString("검색어") + "</td>");
	      out.print("<td>" + rs.getString("명칭") + "</td>");
	      out.print("<td>" + rs.getString("행정시") + "</td>");
	      out.print("<td>" + rs.getString("행정구") + "</td>");
	      out.print("<td>" + rs.getString("행정동") + "</td>");
		out.print("</tr>");
	}
	
	rs.close();
	pstmt.close();
	conn.close();
}catch(Exception e){
	e.printStackTrace();
}finally{
	try{
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>
</table>
</body>
</html>