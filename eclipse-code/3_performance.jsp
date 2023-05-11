
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
        <form action="3_search_performance.jsp" method="get">
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
          <td> M 아티스트 2023 김도현 피아노 리사이틀 II</td>
          <td><a href="http://www.gdfac.or.kr/web/lay2/program/S1T204C211/show/view.do?show_seq=1925&cpage=2&rows=10&keyword=&place=&start_dt=&end_dt=">Dear Next Generation, 유다빈밴드(YUDABINBAND)</a></td>
          <td><a href="http://www.gdfac.or.kr/web/lay2/program/S1T204C211/show/view.do?show_seq=1924&cpage=1&rows=10&keyword=&place=&start_dt=&end_dt=">Dear Next Generation, 라쿠나(LACUNA)</a></td>
          </tr>
          <tr>
          <td><a href="https://www.mfac.or.kr/performance/whole_view.jsp?sc_b_category=17&sc_b_code=BOARD_1207683401&pk_seq=2176&page=1">
          <img src="https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=6a59720cd9c34bbfa056eb6b5031f809&thumb=Y" alt="예제1"></a></td>
          <td><img src="https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=c694a4f0777040b994e88390c2b982b1&thumb=Y" alt="예제2"></td>
          <td><img src="https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=9ed79127f4af4011934a1b4543a3ef65&thumb=Y" alt="예제3"></td>
          </tr>
          <tr>
          <td><a href="http://www.gdfac.or.kr/web/lay2/program/S1T204C211/show/view.do?show_seq=1944&cpage=1&rows=999&keyword=&place=&start_dt=&end_dt=">6월 한밤의 공연 산책 [만보와 별별머리]</a></td>
          <td><a href="https://www.naruart.or.kr/bbs/board.php?bo_table=performance&wr_id=823&page=2">2023 [나루 뮤지컬 나잇]</a></td>
          <td><a href="http://www.gbcf.or.kr/load.asp?subPage=110.view&cate=A&idx=148">송대관 콘서트</a></td>
          </tr>
          <tr>
          <td><img src="https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=e9d8104ec63a4e2a87eb15b69d3b0bb8&thumb=Y" alt="예제4"></td>
          <td><img src="https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=dd79fddeee47453aa1944653ee7c098f&thumb=Y" alt="예제5"></td>
          <td><img src="https://culture.seoul.go.kr/cmmn/file/getImage.do?atchFileId=de15e7f858704a77bf1a9eadf735767a&thumb=Y" alt="예제6"></td>
          </tr>
          
          </table>
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>