<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");					// 항상 첫부분
%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>post방식 전송</h1>
	<form action="" method="post">
		이름: <input type="text" name="name"> <br>
		이메일: <input type="email" name="email"> <br>
		암호: <input type="password" name="pw"> <br>
		주소: <input type="text" name="adress"> <br>
		
		<input type="submit" value="가입">
	</form>
	<hr>
	<%
/* 	request.setCharacterEncoding("utf-8"); 		// 파라미터 읽기 전에 실행되어야 한글이 안깨짐, 거의 항상 첫줄에 */
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pw = request.getParameter("password");
	String adress = request.getParameter("adress");
	
	System.out.println(pw);
	%>
	
	<p>이름: <%= name %></p>
	<p>이메일: <%= email %></p>
	<p>암호: 표시되지않음</p>
	<p>주소: <%= adress %></p>
	

</body>
</html>