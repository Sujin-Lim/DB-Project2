

<%-- main.jsp에서 입력받은 검색어를 통해 performance 테이블에 있는 데이터를 가져와서 화면에 보여줍니다. --%>


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
   
   String query = request.getParameter("query");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연 리스트</title>
</head>
<body>
<center><h2>공연 리스트</h2></center>
<table width="800" border="1" align="center">
<tr>
<th>분류</th>
<th>자치구</th>
<th>공연행사명</th>
<th>날짜</th>
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
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM performance WHERE 분류 LIKE ? OR 자치구 LIKE ? OR 공연행사명 LIKE ? OR 날짜 LIKE ? OR 장소 LIKE ? OR 기관명 LIKE ? OR 이용대상 LIKE ? OR 이용요금 LIKE ? OR 출연자정보 LIKE ? OR 프로그램소개 LIKE ? OR 기타내용 LIKE ? OR 홈페이지주소 LIKE ? OR 대표이미지 LIKE ? OR \"시민/기관\" LIKE ? OR 테마분류 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 15; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
   while(rs.next()){ //조회되는 로우(행) 반복
	   out.print("<tr>");
	      out.print("<td>" + rs.getString("분류") + "</td>"); 
	      out.print("<td>" + rs.getString("자치구") + "</td>");
	      out.print("<td>" + rs.getString("공연행사명") + "</td>");
	      out.print("<td>" + rs.getString("날짜") + "</td>");
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