<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>action: 경로</h1>
	<%-- 
	프로토콜로 시작하면 외부 경로
	--%>
	<%--
	네이버
	http://search.naver.com/search.naver?query=bts --%>
	
	<h3>네이버</h3>
	<form action="http://search.naver.com/search.naver">
		<input type="text" name="query" value="bts">
		<input type="submit" value="전송">
	</form>


	<h3>구글</h3>
	<form action="http://www.google.co.kr/search">
		<input type="text" name="q">
		<input type="submit">
	</form>


	<h3>다음</h3>
	<form action="http://search.daum.net/search">
		<input type="text" name="q">
		<input type="submit">
	</form>
</body>
</html>