
<%-- 메인 페이지 입니다. 검색창에서 검색어를 입력해 search.jsp로 넘깁니다.
	 개짜증난다 input type="text"에 placeholder값 지우니 됐다 어이없다 진짜 챗지피티 죽여버려 --%>


<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <div class="m-wrap">
  <form action="search.jsp" method="get">
  	<input type="text" name="query" style="width:300px; height:100px;">
  	<input type="submit" value="검색" style="width:50px; height:50px;">
  </form>
  </div>
  <div class="footer"></div>

</body>


</html>