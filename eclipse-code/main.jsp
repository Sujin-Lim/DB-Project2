<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam non luctus odio, eget ultrices velit. Donec
      porttitor,
      nulla nec sodales consectetur, ligula ipsum cursus lorem, ac aliquet purus sem vel mi. Nunc vestibulum nulla at
      ultrices
      laoreet. Aliquam molestie urna risus, a pharetra purus imperdiet eu. Ut tempus elit ligula, eget interdum ipsum
      dictum
      in. Nullam a lacus at nibh ornare porttitor. Aliquam vitae justo semper, dictum tellus vitae, hendrerit ex. Nullam
      congue tristique consectetur. Praesent non vehicula neque, at vestibulum risus..</p>
  </div>
  <div class="footer"></div>

</body>


</html>