<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE>
<html>
    <head>
    <meta charset="UTF-8">
    </head>
<body>
<%
String user_id = "";
String user_pw = "";
String userLevel = "";
if(request.getParameter("user_id") == ""){  %>
     <script>
	 alert("아이디를 입력하세요");
	 document.location.href='../index.jsp'
	 </script>
    <% }
else if(request.getParameter("user_pw") == ""){ %>
     <script>
	 alert("비밀번호를 입력하세요");
	 document.location.href='../index.jsp'
	 </script>
    <% }
else{
	user_id = request.getParameter("user_id"); //ID값 가져옴
	user_pw = request.getParameter("user_pw"); //PW값 가져옴
    //여기서 부터 DB 연결 코드
	Connection conn = null;

	String driverName="org.mariadb.jdbc.Driver";
	Class.forName(driverName);
	String serverName = "172.10.0.5";
	String serverPort = "3306";
	String dbname = "users";
	String userName = "svc";
	String userPassword = "1234";
	String url = "jdbc:mysql://"+serverName+":"+serverPort+"/"+dbname;
//	String url = "jdbc:mysql://localhost:3306/users";
	conn = DriverManager.getConnection(url, userName, userPassword);

	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from user where ID = '" + user_id + "' AND PASSWORD ='" + user_pw + "'");
	Boolean check = false;
	while(rs.next()) // 결과값을 하나씩 가져와서 저장하기 위한 while문
    {
		String id = rs.getString("ID"); //DB에 있는 ID가져옴
    	String lv = rs.getString("USER_LEVEL"); // 사용제 레벨 가져옴(필수 아님)
    	session.setAttribute("user_id", id); //DB값을 세션에 넣음
		session.setAttribute("userLevel", lv); // 세션에 레벨값 넣음
		check = true;	
    }
	if(check){ //ID,PW가 DB에 존재하는 경우 게시판으로 이동하는 코드 
    %> 
 			 <script>
  			 document.location.href='./board_list.jsp'
 			 </script> <%
    	        rs.close();
    	    	conn.close();
		}   else  { //ID,PW가 일치하지 않는 경우
        %>
     <script>
	 alert("ID 또는 PW를 잘못 입력했습니다.");
	 document.location.href='../index.jsp'
	 </script>
    <%    }
   } %>
</html>
