<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ARTICLE DETAIL</title>
</head>
<body>
	<div>
		<a href="/">로고</a>
		<ul>
			<li><a href="/">HOME</a></li>
			<li><a href="/usr/article/list">LIST</a></li>
		</ul>
	</div>

	<h1>게시물 상세보기</h1>
	
	<table border="1">
		<tbody>
			<tr>
				<th>번호</th>
				<td>${article.id }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${article.regDate }</td>
			</tr>
			<tr>
				<th>수정일</th>
				<td>${article.updateDate }</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${article.memberId }</td>
			</tr>
			<tr>
				<th>제목</th>
				<td>${article.title }</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>${article.body }</td>
			</tr>
		</tbody>
	</table>
</body>
</html>