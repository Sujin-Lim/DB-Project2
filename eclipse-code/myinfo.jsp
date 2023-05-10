
  <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <div class="header"></div>
      <%
   		 String userId = (String) session.getAttribute("loginUser");
       %>
    <div class="i-wrap">
    <h1>내 정보 수정</h1>
    <form method="post" action="update_info.jsp">
        <table>
<tr>
<td><label for="custid">아이디:</label></td>
<td><input type="text" id="custid" name="custid" readonly value="<%= session.getAttribute("loginUser") %>"></td>
</tr>
<tr>
<td><label for="custpw">비밀번호:</label></td>
<td><input type="password" id="custpw" name="custpw"></td>
</tr>
<tr>
<td><label for="custname">이름:</label></td>
<td><input type="text" id="custname" name="custname"></td>
</tr>
<tr>
<td><label for="custphone">전화번호:</label></td>
<td><input type="text" id="custphone" name="custphone"></td>
</tr>
<tr>
<td><label for="custadd">주소:</label></td>
<td><input type="text" id="custadd" name="custadd"></td>
</tr>
</table>

        <input type="submit" value="수정" style="margin-left:100px;">
    </form>
    </div>
    <div class="footer"></div>
    </body>


    </html>