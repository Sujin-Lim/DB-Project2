
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
<title>서울 공공 체육시설</title>

<style>
    .showstep1E{
        max-height: 300px;
        overflow: hidden;
    }
    .showstep2E{
        max-height: 600px;
        overflow: hidden;
    }
    .contentE{
        height: 100%;
    }
    .hideE{
        display: none;
    }
    
    
  table {
    border: 1px solid black;
    border-collapse: collapse;
    width:800px;
    border-color: black;
  }
  
  th {
     border: 1px solid black;
  }
  
  tr {
    border: 1px solid black;
    border-collapse: collapse;
    border-color: black;
  }
  
  td {
    border: 1px solid black;
    border-collapse: collapse;
    border-color: black;
  }
</style>

</head>
<body>
<h2>서울 공공 체육시설</h2>


<div class="detailinfoE showstep1E">
    <div class="contentE">
<table>
<tr>
   <th>시설명</th>
   <th>소유기관</th>
   <th>좌석수</th>
   <th>수용인원</th>
   <th>준공연도</th>
</tr>
<%
try{
   Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
    conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.

   String sql = "SELECT * FROM exercise WHERE 시군구 LIKE ? OR 시설명 LIKE ? OR 소유기관 LIKE ? OR 관리주체 LIKE ? OR 바닥재료 LIKE ? OR 좌석수 LIKE ? OR 수용인원 LIKE ? OR 준공연도 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 8; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
   while(rs.next()){ //조회되는 로우(행) 반복
      out.print("<tr>");
       out.print("<td>" + (rs.getString("시설명") == null ? "" : rs.getString("시설명")) + "</td>");
       out.print("<td>" + (rs.getString("소유기관") == null ? "" : rs.getString("소유기관")) + "</td>");
       out.print("<td>" + (rs.getString("좌석수") == null ? "" : rs.getString("좌석수")) + "</td>");
       out.print("<td>" + (rs.getString("수용인원") == null ? "" : rs.getString("수용인원")) + "</td>");
       out.print("<td>" + (rs.getString("준공연도") == null ? "" : rs.getString("준공연도")) + "</td>");
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

<a href="#" class="btn_openE">더보기</a>
<a href="#" class="btn_closeE hideE">감추기</a>


    <script src="moree_yj.js"></script>
    
    
</body>
</html>