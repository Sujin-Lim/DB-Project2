
<%@page import="java.sql.*" %>  
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


<style>

    .showstep1G{
        max-height: 300px;
        overflow: hidden;
    }
    .showstep2G{
        max-height: 600px;
        overflow: hidden;
    }
    .contentG{
        height: 100%;
    }
    .hideG{
        display: none;
    }
</style>


</head>
<body>
<h2>게임장 리스트</h2>

<div class="detailinfoG showstep1G">
    <div class="contentG">
<table border="1">
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
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM game WHERE 게임장명 LIKE ? OR 전화번호 LIKE ? OR 지번주소 LIKE ? OR 도로명주소 LIKE ? OR 취급게임 LIKE ? OR 등급 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 6; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
   while(rs.next()){ //조회되는 로우(행) 반복
	   out.print("<tr>");
	    out.print("<td>" + (rs.getString("게임장명") == null ? "" : rs.getString("게임장명")) + "</td>");
	    out.print("<td>" + (rs.getString("전화번호") == null ? "" : rs.getString("전화번호")) + "</td>");
	    out.print("<td>" + (rs.getString("지번주소") == null ? "" : rs.getString("지번주소")) + "</td>");
	    out.print("<td>" + (rs.getString("도로명주소") == null ? "" : rs.getString("도로명주소")) + "</td>");
	    out.print("<td>" + (rs.getString("취급게임") == null ? "" : rs.getString("취급게임")) + "</td>");
	    out.print("<td>" + (rs.getString("등급") == null ? "" : rs.getString("등급")) + "</td>");
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
</div>
</div>

<a href="#" class="btn_openG">더보기</a>
<a href="#" class="btn_closeG hideG">감추기</a>

    <script src="moreg_yj.js"></script>
    
    
</body>
</html>