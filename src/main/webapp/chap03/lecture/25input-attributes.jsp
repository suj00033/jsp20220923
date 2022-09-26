<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>input 요소와 사용할 수 있는 attribute</h1>
	
	<form action="">						<!-- form 엘리멘트 -->
		value : 초기값 <input type="text" name="p1" value="초기값!!"> <br>
		placeholder: 힌트 <input type="text" name="p2" placeholder="세글자 이상"> <br>
		required: 필수입력 <input type="text" name="p3" required> <br>
		readonly: 읽기만 가능 <input type="text" name="p4" readonly> <br>
		disabled: 전송불가 <input type="text" name="p5" disabled> <br>
		
		<input type="submit" value="전송">
	</form>


</body>
</html>