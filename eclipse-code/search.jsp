

<!-- test -->

=======

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
              </head>

              <body>
                <div class=s-wrap>
                  <div class="s-performance">
                    <h1>공연 검색 결과</h1>
                      <table border="1">
<tr>
<th>분류</th>
<th>자치구</th>
<th>공연행사명</th>
<th>날짜</th>
<th>장소</th>
<th>기관명</th>
<th>이용대상</th>
<th>이용요금</th>
<th>출연자정보</th>
<th>프로그램소개</th>
<th>기타내용</th>
<th>홈페이지주소</th>
<th>대표이미지</th>
<th>신청일</th>
<th>시민/기관</th>
<th>시작일</th>
<th>종료일</th>
<th>테마분류</th>
</tr>

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
   // 모든 컬럼에서 데이터를 가져오도록 or로 연결함.
   String sql = "SELECT * FROM performance WHERE 분류 LIKE ? OR 자치구 LIKE ? OR 공연행사명 LIKE ? OR 날짜 LIKE ? OR 장소 LIKE ? OR 기관명 LIKE ? OR 이용대상 LIKE ? OR 이용요금 LIKE ? OR 출연자정보 LIKE ? OR 프로그램소개 LIKE ? OR 기타내용 LIKE ? OR 홈페이지주소 LIKE ? OR 대표이미지 LIKE ? OR \"시민/기관\" LIKE ? OR 테마분류 LIKE ?";
   pstmt = conn.prepareStatement(sql);
   
   for (int i = 1; i <= 15; i++) {
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
	      out.print("<td>" + rs.getString("기관명") + "</td>");
	      out.print("<td>" + rs.getString("이용대상") + "</td>");
	      out.print("<td>" + rs.getString("이용요금") + "</td>");
	      out.print("<td>" + rs.getString("출연자정보") + "</td>");
	      out.print("<td>" + rs.getString("프로그램소개") + "</td>");
	      out.print("<td>" + rs.getString("기타내용") + "</td>");
	      out.print("<td>" + rs.getString("홈페이지주소") + "</td>");
	      out.print("<td>" + rs.getString("대표이미지") + "</td>");
	      out.print("<td>" + rs.getString("신청일") + "</td>");
	      out.print("<td>" + rs.getString("시민/기관") + "</td>");
	      out.print("<td>" + rs.getString("시작일") + "</td>");
	      out.print("<td>" + rs.getString("종료일") + "</td>");
	      out.print("<td>" + rs.getString("테마분류") + "</td>");
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
                  <div class="s-exercise">
                    <h1>운동 검색 결과</h1>
                    <div class="s-exercise-result">
                      <table border="1">
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
                        
                        <% try{ Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
                          conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system" , "1234" );
                          //username, password는 개인 Oracle 계정의 것으로 하면 됨 // 모든 컬럼에서 데이터를 가져오도록 or로 연결함. 
                          String sql="SELECT * FROM performance WHERE 시군구 LIKE ? OR 시설명 LIKE ? OR 소유기관 LIKE ? OR 관리주체 LIKE ? OR 부지면적 LIKE ? OR 건축면적 LIKE ? OR 연면적 LIKE ? OR 바닥재료 LIKE ? OR 좌석수 LIKE ? OR 수용인원 LIKE ? OR 준공연도 LIKE ?"
                          ; pstmt=conn.prepareStatement(sql); for (int i=1; i <=15; i++) { pstmt.setString(i, "%" +
                          query + "%" ); } rs=pstmt.executeQuery(); while(rs.next()){ //조회되는 로우(행) 반복 out.print("<tr>");
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
                          }
%>
</table>
                    </div>
                  </div>
                  <div class="s-book">
                    <h1>도서관 검색 결과</h1>
                    <div class="s-book-result">
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
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
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
                  <div class="s-game">
                    <h1>게임 검색 결과</h1>
                    <div class="s-game-result">
                      <table border="1">
                        <tr>
                          <th>게임장명</th>
                          <th>전화번호</th>
                          <th>지번주소</th>
                          <th>도로명주소</th>
                          <th>취급게임</th>
                          <th>등급</th>
                        </tr>
                        <% try{ Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
                          conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Button" , "1234" );
                          //username, password는 개인 Oracle 계정의 것으로 하면 됨 // 모든 컬럼에서 데이터를 가져오도록 or로 연결함. 
                          String sql="SELECT * FROM performance WHERE 게임장명 LIKE ? OR 전화번호 LIKE ? OR 지번주소 LIKE ? OR 도로명주소 LIKE ? OR 취급게임 LIKE ? OR 등급 LIKE ?"
                          ; pstmt=conn.prepareStatement(sql); for (int i=1; i <=15; i++) { pstmt.setString(i, "%" +
                          query + "%" ); } rs=pstmt.executeQuery(); while(rs.next()){ //조회되는 로우(행) 반복 out.print("<tr>");
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
                          }

%>
</table>
                    </div>
                  </div>
                  <div class="s-food">
                    <h1>맛집 검색 결과</h1>
                    <div class="s-food-result">
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
                          conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "button" , "1234" );
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
                  <div class="s-walk">
                    <h1>둘레길 검색 결과</h1>
                    <div class="s-walk-result">
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
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "Button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨

  
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
              </body>

              </html>