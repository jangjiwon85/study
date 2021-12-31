<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>

      <%
        String session_id = (String)session.getAttribute("user_id");
      %>

</head>
<body>
<% Boolean check = false; 
   if(check){ %>
       	<script>
 	alert("이미 로그인 된 상태입니다.");
       	document.location.href='./board_list.jsp'
        </script>
	<% } 
   else { %>
        <script>
	alert("로그인이 필요합니다.");
       	document.location.href='./login.jsp'
	</script> 
	<% }
	%>
</body>
</html>
