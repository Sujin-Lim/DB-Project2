
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
        <form action="6_search_trek.jsp" method="get">
          <div class="m-search-wr">
            <table class="m-search-t">
              <tr>
                <td><input class="m-search-bar" type="text" name="query"></td>
                <td><input class="m-search-bt" type="submit" value="검색"></td>
                </tr>            
            </table>
          </div>
          <div class="m-content" style="display:flex; justify-content: center; align-items: center; ">
          <img src="img/dulle.PNG" alt="둘레길">
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>