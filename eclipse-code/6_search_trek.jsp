
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
<title>서울 둘레길</title>

<style>

    .showstep1T{
        max-height: 300px;
        overflow: hidden;
    }
    .showstep2T{
        max-height: 600px;
        overflow: hidden;
    }
    .contentT{
        height: 100%;
    }
    .hideT{
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
<h2>서울 둘레길, 생태길 정보</h2>


<div class="detailinfoT showstep1T">
    <div class="contentT">
<table border="1">
<tr>
<th>자치구</th>
<th>코스레벨</th>
<th>코스대분류</th>
<th>코스명</th>
<th>상세코스</th>
<th>설명</th>
<th>거리</th>
<th>소요시간</th>
<th>교통편</th>
<th>연계지하철역</th>
<th>연계코스</th>
<th>관련파일</th>
</tr>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM trek WHERE 자치구 LIKE ? OR 코스레벨 LIKE ? OR 코스대분류 LIKE ? OR 코스명 LIKE ? OR 상세코스 LIKE ? OR 설명 LIKE ? OR 거리 LIKE ? OR 소요시간 LIKE ? OR 교통편 LIKE ? OR 연계지하철역 LIKE ? OR 연계코스 LIKE ? OR 관련파일 LIKE ? ";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 12; i++) {
       pstmt.setString(i, "%" + query + "%");
   }

   rs = pstmt.executeQuery();

   //값이 null이면 빈칸으로 출력하도록 코드 추가함.
   while (rs.next()) {
	    out.print("<tr>");
	    out.print("<td>" + (rs.getString("자치구") == null ? "" : rs.getString("자치구")) + "</td>");
	    out.print("<td>" + (rs.getString("코스레벨") == null ? "" : rs.getString("코스레벨")) + "</td>");
	    out.print("<td>" + (rs.getString("코스대분류") == null ? "" : rs.getString("코스대분류")) + "</td>");
	    out.print("<td>" + (rs.getString("코스명") == null ? "" : rs.getString("코스명")) + "</td>");
	    out.print("<td>" + (rs.getString("상세코스") == null ? "" : rs.getString("상세코스")) + "</td>");
	    out.print("<td>" + (rs.getString("설명") == null ? "" : rs.getString("설명")) + "</td>");
	    out.print("<td>" + (rs.getString("거리") == null ? "" : rs.getString("거리")) + "</td>");
	    out.print("<td>" + (rs.getString("소요시간") == null ? "" : rs.getString("소요시간")) + "</td>");
	    out.print("<td>" + (rs.getString("교통편") == null ? "" : rs.getString("교통편")) + "</td>");
	    out.print("<td>" + (rs.getString("연계지하철역") == null ? "" : rs.getString("연계지하철역")) + "</td>");
	    out.print("<td>" + (rs.getString("연계코스") == null ? "" : rs.getString("연계코스")) + "</td>");
	    out.print("<td>" + (rs.getString("관련파일") == null ? "" : rs.getString("관련파일")) + "</td>");
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

<a href="#" class="btn_openT">더보기</a>
<a href="#" class="btn_closeT hideT">감추기</a>

    <script src="moret_yj.js"></script>
    
    
</body>
</html>