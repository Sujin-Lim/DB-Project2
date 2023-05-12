<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>header</title>

  <link rel="stylesheet" href="button.css">

  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>

<body class="bt-body">
  <div class="bt-header">
    <div class="bt-wrap">
      <div class="bt-menu">
        <div class="bt-hamburger">
          <input id="bt-h" type="checkbox">
          <label for="bt-h">
            <span class="bt-h1"></span>
            <span class="bt-h2"></span>
            <span class="bt-h3"></span>
          </label>
        </div>
      </div>
        <input class="bt-myinfo-btn" type="button" value="내 정보">
        <img class="bt-search-icon" src="img/search.png" alt="검색">
    </div>
  </div>
  <div class="bt-hidden-menu">
    <ul class="bt-hidden">
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="main.jsp">메인</a><li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="1_exercise.jsp">운동</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="2_book.jsp">도서관</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="3_performance.jsp">문화생활</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="4_game.jsp">게임장</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="5_food.jsp">음식점</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="6_trek.jsp">둘레길</a></li>
    </ul>
  </div>
  <div class="bt-hidden-search">
  <form action="search.jsp" method="get">
    <input class="bt-search-bar" type="text" name="query">
    </form>
    <div class="bt-hidden-tag-wrap">
      <div class="bt-tag"><a class="bt-search-tag" href="http://localhost:9001/button/2_search_book.jsp?query=%EB%A7%88%ED%8F%AC%EC%A4%91%EC%95%99%EB%8F%84%EC%84%9C%EA%B4%80"> #마포중앙도서관</a></div>
      <div class="bt-tag"><a class="bt-search-tag" href="http://localhost:9001/button/3_search_performance.jsp?query=%EB%AE%A4%EC%A7%80%EC%97%84+%EC%BD%98%EC%84%9C%ED%8A%B8"> #뮤지엄콘서트</a></div>
      <div class="bt-tag"><a class="bt-search-tag" href="http://localhost:9001/button/4_search_game.jsp?query=%ED%8D%BC%EB%8B%88%EB%9E%9C%EB%93%9C"> #퍼니랜드</a></div>
      <br>
      <div class="bt-tag"><a class="bt-search-tag" href="http://localhost:9001/button/5_search_food.jsp?query=%EB%83%89%EB%A9%B4"> #냉면</a></div>
      <div class="bt-tag"><a class="bt-search-tag" href="http://localhost:9001/button/6_search_trek.jsp?query=%EB%A7%88%ED%8F%AC%EA%B5%AC"> #마포구둘레길</a></div>
      <div class="bt-tag"><a class="bt-search-tag" href="http://localhost:9001/button/1_search_exercise.jsp?query=%EC%88%98%EC%98%81"> #수영</a></div>
      
    </div>
  </div>
  <div class="bt-hidden-info">
    <ul class="bt-hidden-info-list">
      <li class="bt-hidden-info-li"><a class="bt-hidden-i" href="myinfo.jsp">내 정보 수정</a></li>
      <li class="bt-hidden-info-li"><a class="bt-hidden-i" href="logout.jsp">로그아웃</a></li>
      
    </ul>
  </div>

  <script>
    var count = {
      menu: 0,
      search: 0,
      info: 0
    };
    $('#bt-h').on('click', function () {
      count.menu += 1;
      if (count.menu % 2 == 1) {
        $('.bt-hidden-menu').slideDown();
      } else {
        $('.bt-hidden-menu').slideUp();
      }
    });
    // 숨겨진 검색창
    $('.bt-search-icon').on('click', function () {
      count.search += 1;
      if (count.search % 2 == 1) {
        $('.bt-hidden-search').slideDown();
      } else {
        $('.bt-hidden-search').slideUp();
      }
    });
    $('.bt-myinfo-btn').on('click', function () {
      count.info += 1;
      if (count.info % 2 == 1) {
        $('.bt-hidden-info').slideDown();
      } else {
        $('.bt-hidden-info').slideUp();
      }
    });
  </script>


</body>

</html>