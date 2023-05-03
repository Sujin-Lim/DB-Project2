<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 
      2023/04/28  
      Coding by Button (SJ,SY,EJ,HJ,JY)
-->

<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hello!</title>
  <link rel="stylesheet" href="button.css">
</head>

<body>
  <div class="li-wrap">
    <div class="li-container">
      <div class="li-intro">
        <h2> ㅡㅡ로그인 하세요</h2>
        <b>로그인하여 취미생활을 즐겨보세요!</b>
      </div>
      <form action="loginCheck.jsp" method="post">
        <table class="li-input">
          <tr>
            <td><input class="li-id" name="custid" type="text" placeholder="아이디"></td>
          </tr>
          <tr>
            <td><input class="li-pw" name="custpw" type="password" placeholder="비밀번호"></td>
          </tr>
          <tr>
            <td><input class="li-login" type="submit" value="로그인"></td>
          </tr>
        </table>
        <div class="li-j">
          <span>@@@에 처음이신가요?</span>
          <input class="li-join" type="button" value="가입하기" onclick="location.href='join.jsp'">
        </div>
      </form>
    </div>
  </div>


</body>

</html>