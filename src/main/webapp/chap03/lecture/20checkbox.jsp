<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>좋아하는 영웅 고르기</h1>
	<form action="">
		<input type="text" name="name"> <br>
		<input type="checkbox" name="heros" value="captain"> 캡틴 아메리카
		<input type="checkbox" name="heros" value="iceman"> 아이스맨
		<input type="checkbox" name="heros" value="superman"> 슈퍼맨
		<input type="checkbox" name="heros" value="spiderman"> 스파이더맨
		
		<br>
		
		<input type="submit" value="전송">
		</form>

<hr>
<%
String name = request.getParameter("name");
String[] heros = request.getParameterValues("heros");

if (heros != null) {
	out.print("<p>");
	out.print(name + "님이 좋아하는 영웅은");
	
	for (String hero : heros) {
		out.print(hero + " ");
	}
	
	out.print("입니다.");
	out.print("</p>");
}
%>

</body>
</html>