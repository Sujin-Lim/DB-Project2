

<%--회원가입 창 join.jsp의 form에서 전달받은 데이터를 데이터베이스(member table)에 저장하는 기능 구현 --%>
<%-- java.sql 패키지에 속하는 클래스들을 import 해 DB에 연결하고 데이터를 조회,수정,삭제 할 수 있는 클래스들을 사용할 수 있게 함 --%>

<%@page import="java.sql.*" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 감사..</title>
</head>
<body>
<%
	// POST 방식(join.jsp의 form method)으로 전달받은 데이터를 변수에 저장
	// (전송된 데이터를 request 객체를 통해 변수에 저장)
	request.setCharacterEncoding("utf-8");
	String custid = request.getParameter("custid");
	String custpw = request.getParameter("custpw");
	String custname = request.getParameter("custname");
	String custphone = request.getParameter("custphone");
	String custadd = request.getParameter("custadd");
	
	// 데이터베이스 연결을 위해 Connection 객체 생성. 
	// PreparedStatement 클래스를 사용해 SQL쿼리 실행
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	
	String sql = "insert into member(custid, custpw, custname, custphone, custadd) values(?, ?, ?, ?, ?)";
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");
		
		// SQL 쿼리 실행
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, custid);
		pstmt.setString(2, custpw);
		pstmt.setString(3, custname);
		pstmt.setInt(4, Integer.parseInt(custphone));
		pstmt.setString(5, custadd);
		pstmt.executeUpdate();
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		// 자원 해제
		try {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			// 작업 도중 예외 발생시 catch 블록에서 예외를 처리함
		} catch(Exception e) {
			e.printStackTrace();
		}
		// 회원가입 후 login 화면으로 이동
		response.sendRedirect("login.jsp");
	}
%>
</body>
</html>
