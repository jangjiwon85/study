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
<% 
Boolean check =false;

if(session_id==null){ %>
	<div style="background:white;margin:-12px -0.5% 0px -20px; text-align:center;height:80px; border: 1px solid"><h2>로그인 페이지</h2></div>
 	<div style="text-align:center;">
	Now id <%= session_id %>
  	<form name="login" method="post" action="jsp/login_check.jsp">
            아이디 : <input type="text" name="user_id"/><br />
            패스워드 : <input type="password" name="user_pw" /><br />
            <input type="submit" value="로그인">
  	</form><br>
 	</div><br>
	<% } 
else { %>
	<script>
	alert("이미 로그인 된 상태입니다.");
 	document.location.href="./jsp/board_list.jsp";
	</script>
<% }
%>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
<script src="js/bootstrap.js"></script>
</body>
</html>
