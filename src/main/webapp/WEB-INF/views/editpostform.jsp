<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Post</title>
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px
}

button {
	background-color: green;
	color: white;
	font-size: 15px
}
</style>
</head>

<body>

<h2>게시물 수정</h2>

<form:form commandName="BoardVO" method="post " action="../board/editok">
	<form:hidden path="seq" />
	<table>
		<tr>
			<td>제목:</td>
			<td><form:input path="title" /></td>
		</tr>
		<tr>
			<td>글쓴이:</td>
			<td><form:input path="writer" /></td>
		</tr>
		<tr>
			<td>내용:</td>
			<td><form:textarea cols="50" rows="5" path="content" /></td>
		</tr>
	</table>
	<input type="submit" value="수정하기" />
	<input type="button" value="취소하기" onclick="history.back()" />
</form:form>

</body>
</html>