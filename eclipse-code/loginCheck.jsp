

<%-- login창에서 받은 아이디와 비밀번호를 member테이블에 입력된 값과 비교해 로그인을 합니다.
	 로그인에 성공할 경우 main.jsp 페이지로 이동하게 되며, 실패시 다시 로그인 창으로 돌아갑니다. --%>


<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.io.*,java.util.*"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
    request.setCharacterEncoding("UTF-8");
    String custid = request.getParameter("custid");
    String custpw = request.getParameter("custpw");
    
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    
    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.23:1521:xe", "button", "1234");
        
        String sql = "SELECT COUNT(*) AS cnt FROM member WHERE custid = ? AND custpw = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, custid);
        pstmt.setString(2, custpw);
        rs = pstmt.executeQuery();
        
        if (rs.next()) {
            int cnt = rs.getInt("cnt");
            if (cnt > 0) {
                // 로그인 성공 HttpSession을 사용해 로그인 정보를 저장함
                HttpSession loginSession = request.getSession();
                loginSession.setAttribute("loginUser", custid);
                response.sendRedirect("main.jsp");
            } else {
                // 로그인 실패
                out.println("<script>");
                out.println("alert('로그인에 실패했습니다. 아이디와 비밀번호를 확인하세요.');");
                out.println("location.href='login.jsp';");
                out.println("</script>");
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
