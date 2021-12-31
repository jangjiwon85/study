<script>
if (session_id==null){ </script>
 <div style="background:white;margin:-12px -0.5% 0px -20px; text-align:center;height:80px; border: 1px solid"><h2>로그인 페이지</h2></div>
 <%=session_id %>님 로그인 되었습니다.
 <div style="text-align:center;">
  <form name="login" method="post" action="./login_check.jsp">
            아이디 : <input type="text" name="user_id"/><br />
            패스워드 : <input type="password" name="user_pw" /><br />
            <input type="submit" value="로그인">
  </form><br>
 </div><br>
 <script>
}
else
{
         alert("이미 로그인 된 상태입니다.");
        document.location.href="./board_list.jsp";
}
