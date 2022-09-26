<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>input 요소의 type 속성</h1>
	<form action="">
	
		text: <input type="text" name="t"> <br>
		number: <input type="number" name="n"> <br>				<!-- 숫자만 입력가능 -->
		email: <input type="email" name="e"> <br>
		password: <input type="password" name="p"> <br>
		file: <input type="file" name="f"> <br>					<!-- 파일 업로드 -->
		button: <input type="button" value="button"> <br>
		
		
	<input type="submit" value="전송">
	
	</form>

</body>
</html>