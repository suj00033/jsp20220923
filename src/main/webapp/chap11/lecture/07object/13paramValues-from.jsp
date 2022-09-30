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
	<form action="13paramValues-to.jsp" method="post">
		주문일자 : <input type="date" name="date"> <br>
		상품 : <br>
		노트북<input type="checkbox" name="prod" value="노트북">
		아이패드<input type="checkbox" name="prod" value="아이패드">
		에어팟<input type="checkbox" name="prod" value="에어팟">
		갤럭시탭<input type="checkbox" name="prod" value="갤럭시탭">
		갤럭시워치<input type="checkbox" name="prod" value="갤럭시워치"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>