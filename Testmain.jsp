<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.io.*,java.util.*"%>

<%-- 메인 페이지 입니다. 검색창에서 검색어를 입력해 search.jsp로 넘깁니다.--%>

<%-- 로그인 여부 확인. --%>
<%
    // 현재 요청(request)에 대한 HttpSession 객체를 가져옵니다.
    // 세션 객체가 존재하지 않으면(null), 새로운 세션을 생성하지 않고(null) null을 반환합니다.
    HttpSession sesHttpSession = request.getSession(false);

    // 세션 객체가 존재하고, loginUser 속성이 세션 객체에 존재하는 경우
    if (session != null && session.getAttribute("loginUser") != null) {
        // loginUser 속성 값을 가져옵니다.
        String loginUser = (String) session.getAttribute("loginUser");
%>

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
        <form action="search_exercise.jsp" method="get">
          <div class="m-search-wr">
            <table class="m-search-t">
              <tr>
                <td><input class="m-search-bar" type="text" name="query"></td>
                <td><input class="m-search-bt" type="submit" value="검색" onsubmit="formsubmit()"></td>
              </tr>
            </table>
            </div>
            </form>
            <div class="m-sub">
              <table class="m-sub-t">
                <tr>
                  <td><a href=""><img src="img/exercise.png" alt="운동"></a></td>
                  <td><a href="performance.jsp"><img src="img/painting.png" alt="공연"></a></td>
                  <td><a href=""><img src="img/movie.png" alt="영화"></a></td>
                </tr>
                <tr>
                  <td><a href=""><img src="img/game.png" alt="게임"></a></td>
                  <td><a href=""><img src="img/book.png" alt="책"></a></td>
                  <td><a href=""><img src="img/ball.png" alt="운동장"></a></td>
                </tr>
              </table>

            </div>

          </div>



      <div class=" footer">
      </div>
      
      <!-- 로그인이 안됐다면 로그인 페이지로 이동 -->
      <%
	} else {
		response.sendRedirect("login.jsp");
	}
%>

    </body>


    </html>