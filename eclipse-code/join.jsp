

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
    
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="button.css">
  <script type="text/javascript" src="joincheck.js"></script>

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

<body class="join-body">
  <div class="header"></div>
  <div class="jo-wrap">
    <div class="jo-content">
    <form name="frm" action="insertmember.jsp" method="post">
        <table class="jo-table">
          <tr>
            <td>아이디</td>
            <td><input class="custid" name="custid" type="text"></td>
          </tr>
          <tr>
            <td>비밀번호</td>
            <td><input class="custpw" name="custpw" type="password"></td>
          </tr>
          <tr>
            <td>이름</td>
            <td><input class="custname" name="custname" type="text"></td>
          </tr>
          <tr>
            <td>전화번호</td>
            <td><input class="custphone" name="custphone" type="number"></td>
          </tr>
          <tr>
            <td>주소</td>
            <td><input class="custadd" name="custadd" type="text"></td>
          </tr>
          <tr>
            <td><input class="join" type="submit" value="회원가입" onclick="return joinCheck()"></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  <div class="footer"></div>
</body>

</html>