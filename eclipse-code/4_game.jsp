
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
      <div class="m-wrap">
        <div class="f-picture">
<img src="img/풋터사진.png" alt="그림">
</div>
        <form action="4_search_game.jsp" method="get">
          <div class="m-search-wr">
            <table class="m-search-t">
              <tr>
                <td><input class="m-search-bar" type="text" name="query"></td>
                <td><input class="m-search-bt" type="submit" value="검색"></td>
                </tr>
                </table>
          </div>
          <div class="m-content">
          <table class="m-content-t">
          <tr>
          <td>한성 우리 게임장</td>
          <td>노원 노리존</td>
          <td>홍대 퍼니랜드</td>
          </tr>
          <tr>
          <td><a href="https://naver.me/GXRWSXCP"><img src="img/game1.jpg" alt="우리게임장"></a></td>
          <td><a href="https://naver.me/GUDeOxFy"><img src="img/game3.jpg" alt="노리존"></a></td>
          <td><a href="https://naver.me/xNlcxzrP"><img src="img/game2-1.jpg" alt="퍼니랜드"></a></td>
          </tr>
          <tr>
          <td>삼성 코엑스 펀시티</td>
          <td>게임장5</td>
          <td>게임장6</td>
          </tr>
          <tr>
          <td><a href="https://naver.me/FOhIfxDx"><img src="img/game4.PNG" alt="펀시티"></a></td>
          <td><a href=""><img src="img/game3.jpg" alt="게임장5"></a></td>
          <td><a href=""><img src="img/game3.jpg" alt="게임장6"></a></td>
          </tr>
          
          </table>
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>