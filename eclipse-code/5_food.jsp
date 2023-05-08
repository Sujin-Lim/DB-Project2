
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
        <form action="search_food.jsp" method="get">
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
          <td><a href="">
          <img src="" alt="예제1"></a></td>
          <td><img src="" alt="예제2"></td>
          <td><img src="" alt="예제3"></td>
          </tr>
          <tr>
          <td><a href=""></a></td>
          <td><a href=""></a></td>
          <td><a href=""></a></td>
          </tr>
          <tr>
          <td><img src="" alt="예제4"></td>
          <td><img src="" alt="예제5"></td>
          <td><img src="" alt="예제6"></td>
          </tr>
          
          </table>
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>