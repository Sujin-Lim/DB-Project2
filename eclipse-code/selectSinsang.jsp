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
<th>분류</th>
<th>자치구</th>
<th>공연행사명</th>
<th>날짜/시간</th>
<th>장소</th>
<th>기관명</th>
<th>이용대상</th>
<th>이용요금</th>
<th>출연자정보</th>
<th>프로그램소개</th>
<th>기타내용</th>
<th>홈페이지주소</th>
<th>대표이미지</th>
<th>신청일</th>
<th>시민/기관</th>
<th>시작일</th>
<th>종료일</th>
<th>테마분류</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "button_yj", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨
	String sql = "select * from per"; //DB를 조회할 select문
	pstmt = conn.prepareStatement(sql); //sql문으로 conn
	rs = pstmt.executeQuery(); //pstmt 실행 후 결과를 rs에 할당
	
	while(rs.next()){ //조회되는 로우(행) 반복
		out.print("<tr>");
		out.print("<td>" + rs.getString("분류") + "</td>"); //DB에서 sabun 컬럼에 해당하는 레코드 값을 불러옴
		out.print("<td>" + rs.getString("자치구") + "</td>");
		out.print("<td>" + rs.getString("공연행사명") + "</td>");
		out.print("<td>" + rs.getString("날짜/시간") + "</td>");
		out.print("<td>" + rs.getString("장소") + "</td>");
		out.print("<td>" + rs.getString("기관명") + "</td>");
		out.print("<td>" + rs.getString("이용대상") + "</td>");
		out.print("<td>" + rs.getString("이용요금") + "</td>");
		out.print("<td>" + rs.getString("출연자정보") + "</td>");
		out.print("<td>" + rs.getString("프로그램소개") + "</td>");
		out.print("<td>" + rs.getString("기타내용") + "</td>");
		out.print("<td>" + rs.getString("홈페이지주소") + "</td>");
		out.print("<td>" + rs.getString("대표이미지") + "</td>");
		out.print("<td>" + rs.getString("신청일") + "</td>");
		out.print("<td>" + rs.getString("시민/기관") + "</td>");
		out.print("<td>" + rs.getString("시작일") + "</td>");
		out.print("<td>" + rs.getString("종료일") + "</td>");
		out.print("<td>" + rs.getString("테마분류") + "</td>");
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