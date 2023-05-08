
<!-- 로그인 페이지입니다. 아이디와 비밀번호를 받아 loginCheck.jsp로 넘겨 로그인 정보 확인을 합니다. -->


<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



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
        <h2> 로그인 하세요 </h2>
        <b>로그인하여 정보를 얻어가세요!</b>
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
          <span>처음이신가요?</span>
          <input class="li-join" type="button" value="가입하기" onclick="location.href='join.jsp'">
        </div>
      </form>
    </div>
  </div>

</body>

</html>