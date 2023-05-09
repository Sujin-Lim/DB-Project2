
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
      <!--  네이버 지도 api 사용을 위한 스크립트 -->
      <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=ih107gnp5i"></script>

    </head>

    <body class="main-body">
      <div class="header"></div>
      <div class="m-wrap">
        <form action="6_search_trek.jsp" method="get">
          <div class="m-search-wr">
            <table class="m-search-t">
              <tr>
                <td><input class="m-search-bar" type="text" name="query"></td>
                <td><input class="m-search-bt" type="submit" value="검색"></td>
                </tr>
                <tr>
          			<td><a href=""><img src="img/trek_1.png" alt=""></a></td>
       			    <td><a href=""><img src="img/trek_2.png" alt=""></a></td>
       		        <td><a href=""><img src="img/trek_3.png" alt=""></a></td>
       		   </tr>
          		<tr>
          			<td><a href=""><img src="img/trek_4.png" alt=""></a></td>
          			<td><a href=""><img src="img/trek_5.png" alt=""></a></td>
          			<td><a href=""><img src="img/trek_6.png" alt=""></a></td>
          		</tr>
                </table>
          </div>
          <div class="m-content" style="display:flex; justify-content: center; align-items: center; ">
          <div class="m-map" id="map" style="width: 800px; height: 500px;">
          
          <!-- 지도를 길 따라서 마커?를 넣고싶은데 귀찮으면 그냥 이미지 넣자 -->
          <script>
              var map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.55210627678788, 126.91839660458588),
                zoom: 15,
                scaleControl: false,
                logoControl: false,
                mapDataControl: false,
                zoomControl: true,
                minZoom: 6
              });
              var marker = new naver.maps.Marker({
                position: new naver.maps.LatLng(37.55210627678788, 126.91839660458588),
                map: map
              });
            </script>
            </div>
          
          </div>
        </form>
      </div>
     
      <div class=" footer">
          </div>

    </body>


    </html>