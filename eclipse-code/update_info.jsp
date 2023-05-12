<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
    // 전달받은 회원 정보 데이터
    String userId = (String) session.getAttribute("loginUser");
    String custpw = request.getParameter("custpw");
    String custname = request.getParameter("custname");
    String custphone = request.getParameter("custphone");
    String custadd = request.getParameter("custadd");

    Connection conn = null;
    PreparedStatement pstmt = null;
    int result = 0;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");
        // SQL 쿼리 작성 및 실행
        String sql = "UPDATE member SET custpw = ?, custname = ?, custphone = ?, custadd = ? WHERE custid = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, custpw);
        pstmt.setString(2, custname);
        pstmt.setString(3, custphone);
        pstmt.setString(4, custadd);
        pstmt.setString(5, userId);
        result = pstmt.executeUpdate();

        if (result > 0) {
            // 회원 정보 수정 성공 시
            out.println("<script>alert('회원 정보가 수정되었습니다.'); location.href='main.jsp';</script>");
        } else {
            // 회원 정보 수정 실패 시
            out.println("<script>alert('회원 정보 수정에 실패하였습니다.'); history.back();</script>");
        }

    } catch (SQLException e) {
        out.println("SQL Exception : " + e.getMessage());
    } catch (ClassNotFoundException e) {

				out.println("SQL Exception : " + e.getMessage());
			}
		
	%>
