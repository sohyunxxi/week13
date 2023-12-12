<%@ page language="java" contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%
    request.setCharacterEncoding("utf-8");
    String title = request.getParameter("title"); // 제목을 받아옴
    String content = request.getParameter("content"); // 내용을 받아옴
    Integer userIdx = (Integer)session.getAttribute("idx");
    if (userIdx==null||userIdx<=0){
        response.sendRedirect("signIn.html");
    }
    
    if (title == null || title.trim().isEmpty()){
        out.println("제목이 비어있습니다.");
    }
    else if(content == null || content.trim().isEmpty()) {
        out.println("내용이 비어있습니다.");

    } else {
       
   
    // 데이터베이스 연결
    Class.forName("com.mysql.jdbc.Driver");
    Connection connect = DriverManager.getConnection("jdbc:mysql://localhost/week6", "Sohyunxxi", "1234");
 

     String postSql = "INSERT INTO post (user_idx, title, content) VALUES (?, ?, ?)";
        PreparedStatement postQuery = connect.prepareStatement(postSql);
        postQuery.setInt(1, userIdx); // 'user_idx'에 'user' 테이블의 'idx' 값을 넣음
        postQuery.setString(2, title);
        postQuery.setString(3, content);
        postQuery.executeUpdate();
        
        response.sendRedirect("../mainPage.jsp");
}
%>
