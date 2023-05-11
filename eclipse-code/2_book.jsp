
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
        <form action="2_search_book.jsp" method="get">
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
          <td> 강남 구립 못골 도서관 </td>
          <td> 마포구립서강도서관</td>
          <td>마포중앙도서관</td>
          </tr>
          <tr>
          <td><a href="https://library.gangnam.go.kr/mglib/index.do">
          <img src="https://mblogthumb-phinf.pstatic.net/MjAyMTAzMTFfMTkz/MDAxNjE1NDMyNzE5NjAx.Ac-LdrXpejqdXgxd4MGhrBryxctnTtaWCVpOih1tYxgg.9Y_BwD1sz0fhGZ_D9vUje_snVDgFch986XeDfOK2RXAg.JPEG.happy_pianist_/output_3610499471.jpg?type=w800" alt="예제1"></a></td>
          <td><a href="https://mplib.mapo.go.kr/sglib/index.do">
          <img src="https://search.pstatic.net/common/?autoRotate=true&quality=100&type=f640_380&src=https%3A%2F%2Fldb-phinf.pstatic.net%2F20221030_155%2F1667090997604bQDzu_JPEG%2F%25B8%25B6%25C6%25F7%25B1%25B8%25B8%25B3%25BC%25AD%25B0%25AD%25B5%25B5%25BC%25AD%25B0%25FC_%25C0%25FC%25B8%25E9%25BB%25E7%25C1%25F8.jpg" alt="예제2"></a></td>
          <td><a href="https://mplib.mapo.go.kr/mcl/index.do">
          <img src="https://t1.daumcdn.net/cfile/tistory/991D4A375B4305F813" alt="예제3"></a></td>
          </tr>
          <tr>
          <td>한국점자도서관</td>
          <td>성동구립성수도서관</td>
          <td>서울특별시교육청용산도서관</td>
          </tr>
          <tr>
          <td><a href="http://www.kbll.or.kr/index/index.php">
          <img src="https://mblogthumb-phinf.pstatic.net/20160705_156/kead1_1467707313489WJOJI_PNG/%C1%A1%C0%DA1.png?type=w2" alt="예제4"></a></td>
          <td><a href="https://www.sdlib.or.kr/SS/main.do">
          <img src="https://mblogthumb-phinf.pstatic.net/MjAyMjEwMDlfMjk0/MDAxNjY1Mjg3Nzc5OTY2.CsZuBSnJ6TKZGlvZTC86Q6npfB4PTQG2jcd2UJqkBL8g.K452x_gbhlczVlLqM6l7FxzJilACIU-UXYPO6vVUtT8g.JPEG.8ydragon8/SE-8e8752a7-dd4a-4dfa-81d3-0fc3a7cbfd59.jpg?type=w800" alt="예제5"></a></td>
          <td><a href="https://yslib.sen.go.kr/yslib/index.do?getContextPath=">
          <img src="https://mblogthumb-phinf.pstatic.net/MjAyMTA0MjFfMjY5/MDAxNjE5MDA2NzY4NzEw.t9_hSrkipijyeRhaujEcNGv_JhJzbZHa7XZrbwcK4rwg.BneQ_akJ8i8GEPOA8bW_3yVeV18g1I2Y7mhmHU9yFkUg.JPEG.rmdwjd2021/%EC%9A%A9%EC%82%B0%EB%8F%84%EC%84%9C%EA%B4%802.jpg?type=w800" alt="예제6"></a></td>
          </tr>
          
          </table>
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>