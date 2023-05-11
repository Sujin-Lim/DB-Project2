
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
<title>서울의 도서관</title>

<style>

    .showstep1B{
        max-height: 300px;
        overflow: hidden;
    }
    .showstep2B{
        max-height: 600px;
        overflow: hidden;
    }
    .contentB{
        height: 100%;
    }
    .hideB{
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
<h2>서울의 도서관</h2>


<div class="detailinfoB showstep1B">
    <div class="contentB">
<table border="1">
<tr>
<th>도서관명</th>
<th>구명</th>
<th>주소</th>
<th>전화번호</th>
<th>홈페이지</th>
<th>운영시간</th>
<th>정기휴관일</th>
<th>도서관구분명</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
    conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "Button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM book WHERE 도서관명 LIKE ? OR 구명 LIKE ? OR 주소 LIKE ? OR 전화번호 LIKE ? OR 홈페이지 LIKE ? OR 운영시간 LIKE ? OR 정기휴관일 LIKE ? OR 도서관구분명 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 8; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   //값이 null이면 빈칸으로 출력하도록 코드 추가함.
   while (rs.next()) {
	    out.print("<tr>");
	    out.print("<td>" + (rs.getString("도서관명") == null ? "" : rs.getString("도서관명")) + "</td>");
	    out.print("<td>" + (rs.getString("구명") == null ? "" : rs.getString("구명")) + "</td>");
	    out.print("<td>" + (rs.getString("주소") == null ? "" : rs.getString("주소")) + "</td>");
	    out.print("<td>" + (rs.getString("전화번호") == null ? "" : rs.getString("전화번호")) + "</td>");
	    out.print("<td>" + (rs.getString("홈페이지") == null ? "" : rs.getString("홈페이지")) + "</td>");
	    out.print("<td>" + (rs.getString("운영시간") == null ? "" : rs.getString("운영시간")) + "</td>");
	    out.print("<td>" + (rs.getString("정기휴관일") == null ? "" : rs.getString("정기휴관일")) + "</td>");
	    out.print("<td>" + (rs.getString("도서관구분명") == null ? "" : rs.getString("도서관구분명")) + "</td>");
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
<a href="#" class="btn_openB">더보기</a>
<a href="#" class="btn_closeB hideB">감추기</a>

    <script src="moreb_yj.js"></script>
    
    
    
</body>
</html>