<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select option 연습</h1>
	<form action="">
	통신사 선택
	<select name="tel" id="">
		<option value="skt">SKT</option> 
		<option value="kt">KT</option> 
		<option value="lg">LG</option> 
	</select>
	
	<br>
	
	음식 선택
	<select name="foods" id="" multiple>
		<option value="coke">코카콜라</option>
		<option value="pepsi">펩시</option>
		<option value="sprite">스프라이트</option>
		<option value="fanta">환타</option>
	</select>
	
	<input type="submit" value="전송">
	
	</form>
	<hr>
	
	<%
	/* select-option으로 만들기 */
	String tel = request.getParameter("tel");
	String [] foods = request.getParameterValues("foods");
	
	if (tel == null) {
		tel = "";
	}
	
	if (foods == null) {
		foods = new String[]{};
	}

	%>
	
	<p>통신사는 <%= tel %>이고 <br>
	선택한 음식들은 <%= String.join("," , foods) %> 입니다. 
	</p>
	
	
</body>
</html>