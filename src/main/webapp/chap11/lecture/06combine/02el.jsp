<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*, java.util.*" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제</title>
</head>
<body>
	<%
	List<Car> list = new ArrayList<>();
	Car car1 = new Car();
	car1.setModel("avante");
	car1.setPrice(5000);
	list.add(car1);
	
	Car car2 = new Car();
	car2.setModel("santafe");
	car2.setPrice(2000);
	list.add(car2);
	
	request.setAttribute("cars", list);
	%>


	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>

</body>
</html>