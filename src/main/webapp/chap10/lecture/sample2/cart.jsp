<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String product = request.getParameter("product");
	
	Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");	// 세션 cart를 map카트로 꺼낼때
	if (cart == null) {									// 전에 넣은 적이 없으면
		cart = new HashMap<String, Integer>();			// 한번만 실행
		session.setAttribute("cart", cart);
	}
	
	if (product != null && !product.trim().isEmpty()) {				// product화면에서 장바구니 가기를 누르면 null 추가됨(공백)을 제거
	cart.computeIfPresent(product, (k, v) -> v + 1);				// product가 있으면 1개 씩 추가
	cart.computeIfAbsent(product, (k) -> 1);						// product가 없을때
	}
	%>
	
	<h1>장바구니</h1>
	<ul>
	<%
	for(Map.Entry<String, Integer> entry : cart.entrySet()) {
		out.print("<li>");
		out.print(entry.getKey());
		out.print(":");
		out.print(entry.getValue());
		out.print("</li>");
	}
	
	%>
	</ul>
	
	<a href="product.jsp">상품 보기</a>

</body>
</html>