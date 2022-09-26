<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form element</h1>

<%-- form요소의 action attribute: form 요소 내의 인풋 값들을 어디로 보내야 하는지 --%>
<form action="12formElement.jsp">													  <!-- 2. 여기로 넘어간다 -->

<%-- text input field --%>
<%-- name attribute: 쿼리 스트링을 완성할때 사용될 파라미터 이름 --%>
<input type="text" name="coffee"/>	<!-- 사용자가 입력할수있는 란을 만드는 명령어 --> <!-- 1. 여기 적힌 값을 -->

<%-- submit button --%>
<input type="submit" />			

</form>

<hr />							<!-- 구분선 -->

<%
String val = request.getParameter("coffee");
%>

coffee: <%= val %>
</body>
</html>