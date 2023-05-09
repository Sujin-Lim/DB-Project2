
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
<title>신상명세서 출력 현황</title>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
    <style>
    .js-load {
        display: none;
    }
    .js-load.active {
        display: block;
    }
    .js-load:after {
        display: none;
    }
    .btn-wrap {
        display: block;
    }
    ul.menu table { list-style:none;  
    position:relative;
    float:left;
    text-align:center;
    width:calc(100%/3 - 12px); 
    margin:12px 6px 0; }
      
    .more {
    width:100%; 
    line-height:30px; 
    color:#72af2c;
    font-size:18px;
    font-weight:700;
    text-align:center;
    border:1px solid #72af2c;
    border-radius:6px;
    display:block;}

    tr {
    height: 47px;}
    
    .tb-1 {
    width: 70px;}
    .tb-2 {
    width: 150px;}
    .tb-3 {
    width: 100px;}
    .tb-4 {
    width: 70px;}
    .tb-5 {
    width: 70px;}
    
    </style>



</head>
<body>
<h2>신상명세서 출력 현황</h2>



<div id="js-load" class="main">                       
        <ul class="menu">

<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver"); //driver
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "button", "1234"); //username, password는 개인 Oracle 계정의 것으로 하면 됨
	
	String sql = "SELECT * FROM food WHERE 키 LIKE ? OR 분류1 LIKE ? OR 분류2 LIKE ? OR 분류3 LIKE ? OR 검색어 LIKE ? OR 명칭 LIKE ? OR 행정시 LIKE ? OR 행정구 LIKE ? OR 행정동 LIKE ?"; //DB를 조회할 select문
	pstmt = conn.prepareStatement(sql); //sql문으로 conn
	
	
	for (int i = 1; i <= 9; i++) {
	       pstmt.setString(i, "%" + query + "%");
	   }

	   rs = pstmt.executeQuery();

    int count = 0; // 몇 번째 row인지 계산하기 위한 변수
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