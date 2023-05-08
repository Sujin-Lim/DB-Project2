

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
<title>게임장 리스트</title>
</head>
<body>
<center><h2>게임장 리스트</h2></center>
<table width="800" border="1" align="center">
<tr>
<th>게임장명</th>
<th>전화번호</th>
<th>지번주소</th>
<th>도로명주소</th>
<th>취급게임</th>
<th>등급</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM performance WHERE 게임장명 LIKE ? OR 전화번호 LIKE ? OR 지번주소 LIKE ? OR 도로명주소 LIKE ? OR 취급게임 LIKE ? OR 등급 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 15; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
   while(rs.next()){ //조회되는 로우(행) 반복
	   out.print("<tr>");
	      out.print("<td>" + rs.getString("게임장명") + "</td>"); 
	      out.print("<td>" + rs.getString("전화번호") + "</td>");
	      out.print("<td>" + rs.getString("지번주소") + "</td>");
	      out.print("<td>" + rs.getString("도로명주소") + "</td>");
	      out.print("<td>" + rs.getString("취급게임") + "</td>");
	      out.print("<td>" + rs.getString("등급") + "</td>");
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