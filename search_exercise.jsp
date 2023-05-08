

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
<title>서울 공공 체육시설</title>
</head>
<body>
<center><h2>서울 공공 체육시설</h2></center>
<table width="800" border="1" align="center">
<tr>
	<th>시군구</th>
	<th>시설명</th>
	<th>소유기관</th>
	<th>관리주체</th>
	<th>부지면적</th>
	<th>건축면적</th>
	<th>연면적</th>
	<th>바닥재료</th>
	<th>좌석수</th>
	<th>수용인원</th>
	<th>준공연도</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM exercise WHERE 시군구 LIKE ? OR 시설명 LIKE ? OR 소유기관 LIKE ? OR 관리주체 LIKE ? OR 부지면적 LIKE ? OR 건축면적 LIKE ? OR 연면적 LIKE ? OR 바닥재료 LIKE ? OR 좌석수 LIKE ? OR 수용인원 LIKE ? OR 준공연도 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 11; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
   while(rs.next()){ //조회되는 로우(행) 반복
	   out.print("<tr>");
	      out.print("<td>" + rs.getString("시군구") + "</td>");
	      out.print("<td>" + rs.getString("시설명") + "</td>");
	      out.print("<td>" + rs.getString("소유기관") + "</td>");
	      out.print("<td>" + rs.getString("관리주체") + "</td>");
	      out.print("<td>" + rs.getString("부지면적") + "</td>");
	      out.print("<td>" + rs.getString("건축면적") + "</td>");
	      out.print("<td>" + rs.getString("연면적") + "</td>");
	      out.print("<td>" + rs.getString("바닥재료") + "</td>");
	      out.print("<td>" + rs.getString("좌석수") + "</td>");
	      out.print("<td>" + rs.getString("수용인원") + "</td>");
	      out.print("<td>" + rs.getString("준공연도") + "</td>");	      
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