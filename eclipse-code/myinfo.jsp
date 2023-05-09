<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Page</title>
</head>
<body>
<%
  // 세션에서 로그인 정보를 가져오기
  String userId = (String) session.getAttribute("loginUser");

%>
    <h1>내 정보 수정</h1>
    <form method="get" action="update_info.jsp">
        <p>
            <label for="custid">아이디:</label>
            <input type="text" id="custid" name="custid" readonly value="<%= session.getAttribute("loginUser") %>">
        </p>
        <p>
            <label for="custpw">비밀번호:</label>
            <input type="password" id="custpw" name="custpw">
        </p>
        <p>
            <label for="custname">이름:</label>
            <input type="text" id="custname" name="custname">
        </p>
        <p>
            <label for="custphone">전화번호:</label>
            <input type="text" id="custphone" name="custphone">
        </p>
        <p>
            <label for="custadd">주소:</label>
            <input type="text" id="custadd" name="custadd">
        </p>
        <input type="submit" value="수정">
    </form>
</body>
</html>
