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
                <title>통합검색결과</title>
                
                
                
                
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
                <div class=s-wrap>
                  <div class="s-performance">
                    <h1>공연 검색 결과</h1>
                    
                    
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
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM performance WHERE 분류 LIKE ? OR 자치구 LIKE ? OR 공연행사명 LIKE ? OR 날짜 LIKE ? OR 장소 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 5; i++) {
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
	      out.print("</tr>");
   }
   
   rs.close();
   pstmt.close();
   conn.close();
}catch(Exception e){
   e.printStackTrace();
}
%>
</table>
</div>
</div>

<a href="#" class="btn_openP">더보기</a>
<a href="#" class="btn_closeP hideP">감추기</a>

      <script src="morep_yj.js"></script>
                    </div>

                  </div>
                  <div class="s-exercise">
                    <h1>운동 검색 결과</h1>
                    <div class="s-exercise-result">
                    
                    
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
                        
                        <% try{ 
                        	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
                        	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");
                          //username, password는 개인 Oracle 계정의 것으로 하면 됨 // 모든 컬럼에서 데이터를 가져오도록 or로 연결함. 
                          String sql="SELECT * FROM exercise WHERE 시군구 LIKE ? OR 시설명 LIKE ? OR 소유기관 LIKE ? OR 관리주체 LIKE ?  OR 바닥재료 LIKE ? OR 좌석수 LIKE ? OR 수용인원 LIKE ? OR 준공연도 LIKE ?";
                          pstmt=conn.prepareStatement(sql);
                          
                          for (int i=1; i <=8; i++) { 
                        	  pstmt.setString(i, "%" + query + "%" );
                        	  } 
                          
                          rs=pstmt.executeQuery(); 
                          
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
                          }
%>
</table>
</div>
</div>

<a href="#" class="btn_openE">더보기</a>
<a href="#" class="btn_closeE hideE">감추기</a>


    <script src="moree_yj.js"></script>
    
                    </div>
                  </div>
                  <div class="s-book">
                    <h1>도서관 검색 결과</h1>
                    <div class="s-book-result">
                    
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
	conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");

  
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
}
%>
</table>
</div>
</div>
<a href="#" class="btn_openB">더보기</a>
<a href="#" class="btn_closeB hideB">감추기</a>

    <script src="moreb_yj.js"></script>
    
                    </div>
                  </div>
                  <div class="s-game">
                    <h1>게임 검색 결과</h1>
                    <div class="s-game-result">
                    
                    
<div class="detailinfoG showstep1G">
    <div class="contentG">
                      <table border="1">
                        <tr>
                          <th>게임장명</th>
                          <th>지번주소</th>
                          <th>도로명주소</th>
                          <th>전화번호</th>
                          <th>취급게임</th>
                          <th>등급</th>
                        </tr>
                        <% try
                        { Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
                        conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");
                          //username, password는 개인 Oracle 계정의 것으로 하면 됨 // 모든 컬럼에서 데이터를 가져오도록 or로 연결함. 
                          String sql="SELECT * FROM game WHERE 게임장명 LIKE ? OR 지번주소 LIKE ? OR 도로명주소 LIKE ? OR 전화번호 LIKE ? OR 취급게임 LIKE ? OR 등급 LIKE ? ";
                           pstmt=conn.prepareStatement(sql); 
                          for (int i=1; i <=6; i++) 
                          { pstmt.setString(i, "%" +query + "%" ); 
                          } rs=pstmt.executeQuery(); 
                          while(rs.next()){
                          out.print("<tr>");
                          out.print("<td>" + rs.getString("게임장명") + "</td>");
                          out.print("<td>" + rs.getString("지번주소") + "</td>");
                          out.print("<td>" + rs.getString("도로명주소") + "</td>");
                          out.print("<td>" + rs.getString("전화번호") + "</td>");
                          out.print("<td>" + rs.getString("취급게임") + "</td>");
                          out.print("<td>" + rs.getString("등급") + "</td>");
                          out.print("</tr>");
                          }

                          rs.close();
                          pstmt.close();
                          conn.close();
                          }catch(Exception e){
                          e.printStackTrace();
                          }

%>
</table>
</div>
</div>

<a href="#" class="btn_openG">더보기</a>
<a href="#" class="btn_closeG hideG">감추기</a>

    <script src="moreg_yj.js"></script>
                    </div>
                  </div>
                  <div class="s-food">
                    <h1>맛집 검색 결과</h1>
                    <div class="s-food-result">
                    
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
                        
                        <% try{ Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
                        conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");
                          //username, password는 개인 Oracle 계정의 것으로 하면 됨 // 모든 컬럼에서 데이터를 가져오도록 or로 연결함. 
                          String sql="SELECT * FROM food WHERE 키 LIKE ? OR 분류1 LIKE ? OR 분류2 LIKE ? OR 분류3 LIKE ? OR 검색어 LIKE ? OR 명칭 LIKE ? OR 행정시 LIKE ? OR 행정구 LIKE ? OR 행정동 LIKE ?"
                          ; pstmt=conn.prepareStatement(sql); for (int i=1; i <=9; i++) { pstmt.setString(i, "%" + query
                          + "%" ); } rs=pstmt.executeQuery(); while(rs.next()){ //조회되는 로우(행) 반복 out.print("<tr>");
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
                          }

%>
</table>
</div>
</div>

<a href="#" class="btn_openF">더보기</a>
<a href="#" class="btn_closeF hideF">감추기</a>

    <script src="moref_yj.js"></script>
                    </div>
                  </div>
                  <div class="s-walk">
                    <h1>둘레길 검색 결과</h1>
                    <div class="s-walk-result">
                    
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

                    </div>
                  </div>
              </body>

              </html>