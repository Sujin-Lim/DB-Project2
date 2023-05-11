
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
        <form action="5_search_food.jsp" method="get">
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
          <td> </td>
          <td><a href=""></a></td>
          <td><a href=""></a></td>
          </tr>
          <tr>
          <td><a href=""><img src="img/food_1.png" alt="평양면옥"></a></td>
          <td><a href=""><img src="img/food_2.png" alt="풍년갈비"></a></td>
          <td><a href=""><img src="img/food_3.png" alt="예당"></a></td>
          </tr>
          <tr>
          <td><a href=""><img src="img/food_4.png" alt="송학"></a></td>
          <td><a href=""><img src="img/food_5.png" alt="황소곱창"></a></td>
          <td><a href=""><img src="img/food_6.png" alt="토담"></a></td>
          </tr>
          
          </table>
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>