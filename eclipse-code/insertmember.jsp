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
	
	String custid = request.getParameter("custid");
	String custpw = request.getParameter("custpw");
	String custname = request.getParameter("custname");
	String custphone = request.getParameter("custphone");
	String custadd = request.getParameter("custadd");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "insert into testm(custid, custpw, custname, custphone, custadd) values(?, ?, ?, ?, ?)";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "madang", "madang");
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, custid);
		pstmt.setString(2, custpw);
		pstmt.setString(3, custname);
		pstmt.setInt(4, Integer.parseInt(custphone));
		pstmt.setString(5, custadd);
		
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
<a href="selectSinsang.jsp">확인하기</a>
</body>
</html>