
  <%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>서울의 운동시설</title>

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
        <form action="1_search_exercise.jsp" method="get">
          <div class="m-search-wr">
            <table class="m-search-t">
              <tr>
                <td><input class="m-search-bar" type="text" name="query"></td>
                <td><input class="m-search-bt" type="submit" value="검색"></td>
              </tr>
            </table>
            </div>
            </form>
            <div class="m-sub">
              <table class="m-sub-t">
                <tr>
                  <td><a href="https://stadium.seoul.go.kr/about/jsbpark"><img src="img/exercise_1.png" alt="잠실야구장" width="100%" height="100%"></a></td>
                  <td><a href="https://www.sisul.or.kr/open_content/worldcup/"><img src="img/exercise_2.png" alt="서울월드컵경기장" width="100%" height="100%"></a></td>
                  <td><a href="https://www.ksponco.or.kr/sports/olparktennis"><img src="img/exercise_3.png" alt="올림픽테니스장" width="100%" height="100%"></a></td>
                </tr>
                <tr>
                  <td><a href="https://hangang.seoul.go.kr/www/contents/654.do?mid=449"><img src="img/exercise_4.png" alt="한강 뚝섬 게이트볼장" width="100%" height="100%"></a></td>
                  <td><a href="https://www.ijongno.co.kr/front/main/11"><img src="img/exercise_5.png" alt="수영장" width="100%" height="100%"></a></td>
                  <td><a href="https://sports.seoul.go.kr/main/facilities/facilities_view.do?&ft_idx=696"><img src="img/exercise_6.png" alt="국궁장" width="100%" height="100%"></a></td>
                </tr>
              </table>
            </div>

          </div>



      <div class=" footer">
      </div>
      
     

    </body>


    </html>
