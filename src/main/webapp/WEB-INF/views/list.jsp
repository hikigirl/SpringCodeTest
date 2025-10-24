<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	
	<style>
		table th:nth-child(1) { width: 140px; }
		table th:nth-child(2) { width: auto; }
		table th:nth-child(3) { width: 180px; }
		
	
	</style>
</head>
<body>
	<!-- list.jsp -->
	<header>
		<h1>Code</h1>
	</header>
	<h2>List</h2>
	
	<!-- <i class="fa-solid fa-house"></i> -->
	
	<table>
		<tr>
			<th>언어</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td><i class="${dto.ldto.icon}" style="${dto.ldto.color}"></i></td>
			<td>${dto.language}</td>
			<td class="left">
				<a href="/code/view.do?seq=${dto.seq}">${dto.subject}</a>
			</td>
			<td>${dto.regdate}</td>
		</tr>
		</c:forEach>
	</table>
	
	<div>
		<button type="button" onclick="location.href='/code/add.do'">글쓰기</button>
	</div>
	
	<script src="https://kit.fontawesome.com/7121714adf.js"></script>
</body>
</html>