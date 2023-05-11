
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
<title>음식점 리스트</title>


<style>

    .showstep1F{
        max-height: 300px;
        overflow: hidden;
    }
    .showstep2F{
        max-height: 600px;
        overflow: hidden;
    }
    .contentF{
        height: 100%;
    }
    .hideF{
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
<h2>음식점 리스트</h2>

<div class="detailinfoF showstep1F">
    <div class="contentF">
<table border="1">
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
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM food WHERE 키 LIKE ? OR 분류1 LIKE ? OR 분류2 LIKE ? OR 분류3 LIKE ? OR 검색어 LIKE ? OR 명칭 LIKE ? OR 행정시 LIKE ? OR 행정구 LIKE ? OR 행정동 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 9; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
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
</div>
</div>

<a href="#" class="btn_openF">더보기</a>
<a href="#" class="btn_closeF hideF">감추기</a>

    <script src="moref_yj.js"></script>
    
</body>
</html>