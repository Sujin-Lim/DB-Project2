<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
    private Connection conn;
    private Statement stmt;
    private ResultSet rs;
%>
<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
    stmt = conn.createStatement();
    rs = stmt.executeQuery("select * from per");
%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Main</title>

  <link rel="stylesheet" href="button.css">

  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <!-- 헤더 푸터 연결 -->
  <script>
    $(document).ready(function () {
      $(".header").load("header.jsp");
    });
    $(document).ready(function () {
      $(".footer").load("footer.jsp");
    });
  </script>

</head>

<body class="main-body">
  <!-- <div class="header"></div> -->

       <div id="content">
        <div id="table">
            <div class="row">
                <table>
                    <tr>
                        <td rowspan="2">분류</td>
                        <td rowspan="2">자치구</td>
                        <td>공연행사명</td>
                    </tr>
                    <tr>
                        <td>날짜/시간</td>
                    </tr>
                </table>
            </div>
        </div>
        <% while(rs.next()){ %>
        
        <a href="#?per=<%=rs.getInt("per") %>">
         <div>
            <div class = "col"><%=rs.getInt("분류") %></div>
            <div class = "col"><%=rs.getString("자치구") %></div>
            <div class = "col"><%=rs.getDate("공연행사명") %></div>
            <div class = "col"><%=rs.getInt("날짜/시간") %></div>
         </div>
         </a>
        <% } %>
    </div>
   
   
   
   
   
  <div class="m-wrap">
  
  
  
  
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam non luctus odio, eget ultrices velit. Donec
      porttitor,
      nulla nec sodales consectetur, ligula ipsum cursus lorem, ac aliquet purus sem vel mi. Nunc vestibulum nulla at
      </p>
  </div>
  <div class="footer"></div>

</body>


</html>