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
<title>공연 리스트</title>

<style>

    .showstep1P{
        max-height: 300px;
        overflow: hidden;
    }
    .showstep2P{
        max-height: 600px;
        overflow: hidden;
    }
    .contentP{
        height: 100%;
    }
    .hideP{
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
<h2>공연 리스트</h2>

<div class="detailinfoP showstep1P">
    <div class="contentP">
<table border="1">
<tr>
<th>분류</th>
<th>자치구</th>
<th>공연행사명</th>
<th>날짜</th>
<th>장소</th>
</tr>
    <% 
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
        conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");

        // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
        String sql = "SELECT * FROM performance WHERE 분류 LIKE ? OR 자치구 LIKE ? OR 공연행사명 LIKE ? OR 날짜 LIKE ? OR 장소 LIKE ?";

        pstmt = conn.prepareStatement(sql);

        int i;
        for (i = 1; i <= 5; i++) {
            pstmt.setString(i, "%" + query + "%");
        }

        rs = pstmt.executeQuery();

        while (rs.next()) { // 조회되는 로우(행) 반복
            out.print("<tr>");
            out.print("<td>" + rs.getString("분류") + "</td>");
            out.print("<td>" + rs.getString("자치구") + "</td>");
            out.print("<td>" + rs.getString("공연행사명") + "</td>");
            out.print("<td>" + rs.getString("날짜") + "</td>");
            out.print("<td>" + rs.getString("장소") + "</td>");
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

<a href="#" class="btn_openP">더보기</a>
<a href="#" class="btn_closeP hideP">감추기</a>

      <script src="morep_yj.js"></script>

        </body>
        </html>

