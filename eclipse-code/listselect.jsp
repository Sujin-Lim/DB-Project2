<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.SQLException" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join 테이블에 추가</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	
	String custid = request.getParameter("자치구");
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "select * from per where 자치구='values(?)'";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "madang", "madang");
		
		pstmt = conn.prepareStatement(sql);
		
		
		pstmt.executeUpdate();
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(pstmt!=null) pstmt.close();
			if(conn!=null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<h3>입력이 완료되었습니다</h3>
<a href="list.jsp">ff</a>
</body>
</html>