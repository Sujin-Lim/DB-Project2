
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

      <!-- 더보기란 js파일임. 지우면 작동안할수도 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
<link rel="stylesheet" href="button.css">
      
</head>
<body>
<h2>음식점 리스트</h2>


<div id="js-load" class="main">                      
        <ul class="menu">

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM food WHERE 키 LIKE ? OR 분류1 LIKE ? OR 분류2 LIKE ? OR 분류3 LIKE ? OR 검색어 LIKE ? OR 명칭 LIKE ? OR 행정시 LIKE ? OR 행정구 LIKE ? OR 행정동 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 9; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   
   int count = 0; // (더보기란에 필요) 몇 번째 row인지 계산하기 위한 변수
   while (rs.next()) { // 조회되는 로우(행) 반복
       if (count % 3 == 0) { // 3번째 row마다 새로운 table 시작
           if (count != 0) { // 첫 번째 table이 아닐 경우, table 닫기
               out.print("</table>");
           }
           out.print("<table border='1' align='center' class='lists__item js-load'>");
           out.print("<tr><th>분류</th><th>명칭</th><th>행정시</th><th>행정구</th><th>행정동</th></tr>");
       }
       out.print("<tr class='tb-load" + count/3 + "'>"); 
	      out.print("<td class='tb-1'>" + rs.getString("분류3") + "</td>");
	      out.print("<td class='tb-2'>" + rs.getString("명칭") + "</td>");
	      out.print("<td class='tb-3'>" + rs.getString("행정시") + "</td>");
	      out.print("<td class='tb-4'>" + rs.getString("행정구") + "</td>");
	      out.print("<td class='tb-5'>" + rs.getString("행정동") + "</td>");
		out.print("</tr>");
	}
   if (count != 0) { // 마지막 table 닫기
       out.print("</table>");
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

</ul>
</div> 

<div style="padding-top:20px;">
    <button type="button" id="js-btn-wrap" class="more">더보기</button>
    </div>

    <script src="moreYJ.js"></script>
    
    
</body>
</html>