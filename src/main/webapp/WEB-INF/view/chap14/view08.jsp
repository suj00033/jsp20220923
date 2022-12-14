<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h1>고객 보기</h1>
	
	<form action="" method="get">
		고객번호 <input type="text" name="id">
		<input type="submit" value="조회">
	</form>
	
	<c:if test="${empty customers }">
		<h3>고객번호를 조회해주세요</h3>
	</c:if>
	
	<c:if test="${not empty customers }">
	<table class="table">
		<thead>
			<tr>
				<th>이름</th>
				<th>주소</th>
				<th>도시</th>
				<th>국가</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${customers }" var="customer">
				<tr>
					<td>
						${customer.name }
					</td>
					<td>
						${customer.address }
					</td>
					<td>
						${customer.city }
					</td>
					<td>
						${customer.country }
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</c:if>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>