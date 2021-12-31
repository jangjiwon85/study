<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
   <%
   String user_id = (String)session.getAttribute("user_id");
   String userLevel = (String)session.getAttribute("userLevel");
   if(user_id == null || userLevel == null){
	   response.sendRedirect("../index.jsp");
   }  	%>   
    <script  type="text/javascript">
     function logout(){
            window.location.href = '../index.jsp';
            }
     </script>
</head>
<body>

 <div style="background:white;margin:-12px -0.5% 0px -20px; text-align:center;height:80px; border: 1px solid"><h2>취약한 페이지</h2></div>
 <div style="text-align:center;">
 <br>세션 ID : <%=session.getId() %><br>
 <%=user_id %>님 로그인 되었습니다.
     <a href="./logout.jsp" style="margin-left:3%">로그아웃</a>
</body>
</html>
