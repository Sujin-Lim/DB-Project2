<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%
    // 1: 기존의 세션 데이터를 모두 삭제
    session.invalidate();
    // 2: 로그인 페이지로 이동시킴.
    response.sendRedirect("login.jsp");
%>