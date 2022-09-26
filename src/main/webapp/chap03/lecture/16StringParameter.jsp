<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action="">
		영어: <input type="text" name="a"> <br>
		수학: <input type="text" name="b"> <br>
		국어: <input type="text" name="c"> <br>
	
	<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
	<input type="submit" value="평균 구하기">
	
	</form>
	
	<hr>
	<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
	
<%
String a = request.getParameter("a");
String b = request.getParameter("b");
String c = request.getParameter("c");

Integer math = 0;
Integer english = 0;
Integer korean = 0;

if(a != null) {								/* 숫자가 아닌 String형이 넘어올수도 있으니 오류 방지를 위해 */
	english = Integer.valueOf(a);
}
if(c != null) {
	korean = Integer.valueOf(c);
}
if(b != null) {
	math = Integer.valueOf(b);
}

double avg = (math + english + korean) / 3.0;
%>

<p>국영수 평균: <%= avg %></p>


</body>
</html>