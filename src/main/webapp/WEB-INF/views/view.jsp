<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/styles/atom-one-dark.css">
	<style>
		table th:nth-child(1) { width: 60px; }
		table th:nth-child(2) { width: auto; }
		#code {
			margin: 1rem;
			border: 1px solid #999;
			white-space:pre-wrap;
		}
		#code * {
			font-family: consolas;
		}
	
	</style>
</head>
<body>
	<!-- view.jsp -->
	<header>
		<h1>Code</h1>
	</header>
	<h2>View</h2>
	
	<table class="vertical">
		<tr>
			<th>번호</th>
			<td>${dto.seq}</td>
		</tr>
		<tr>
			<th>날짜</th>
			<td>${dto.regdate}</td>
		</tr>
		<tr>
			<th>언어</th>
			<td>${dto.language}</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${dto.subject}</td>
		</tr>
		<tr>
			<th>코드</th>
			<td>
				<pre id="code">
				<code class="language-${dto.language}"><c:out value="${dto.code}"></c:out></code>
				</pre>
			</td>
		</tr>
	</table>
	
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.11.1/highlight.min.js"></script>
	<script>
		hljs.highlightAll();
	</script>
	
</body>
</html>