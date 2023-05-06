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
      <div class="bt-myinfo">
        <input class="bt-myinfo-btn" type="button" value="내 정보">
      </div>
      <div class="bt-search">
        <img class="bt-search-icon" src="img/search.png" alt="검색">
      </div>
    </div>
  </div>
  <div class="bt-hidden-menu">
    <ul class="bt-hidden">
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="#">메뉴1</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="#">메뉴1</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="#">메뉴1</a></li>
      <li class="bt-hidden-li"><a class="bt-hidden-a" href="#">메뉴1</a></li>
    </ul>
  </div>
  <div class="bt-hidden-search">
    <input class="bt-search-bar" type="text" placeholder="검색어 입력"><br>
    <div class="bt-hidden-tag-wrap">
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 1</a></div>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 2</a></div>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 3</a></div>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 4</a></div>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 5</a></div>
      <br>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 6</a></div>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 7</a></div>
      <div class="bt-tag"><a class="bt-search-tag"> #검색어 추천 8</a></div>
    </div>
  </div>
  <div class="bt-hidden-info">
    <ul class="bt-hidden-info-list">
      <li class="bt-hidden-info-li"><a class="bt-hidden-i" href="#">마이메뉴1</a></li>
      <li class="bt-hidden-info-li"><a class="bt-hidden-i" href="#">마이메뉴1</a></li>
      <li class="bt-hidden-info-li"><a class="bt-hidden-i" href="#">마이메뉴1</a></li>
      <li class="bt-hidden-info-li"><a class="bt-hidden-i" href="#">마이메뉴1</a></li>
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