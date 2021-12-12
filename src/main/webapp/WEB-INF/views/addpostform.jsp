<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Post</title>
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

<h2>게시물 추가</h2>

<form action="/board/addok" method="post">
<table>
<tr><td>제목:</td><td><input type="text" name="title"/></td></tr>
<tr><td>글쓴이:</td><td><input type="text" name="writer"/></td></tr>
<tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
</table>
<button type="submit">추가하기</button>
<button type="button" onclick="location.href='list'">취소하기</button>
</form>

</body>
</html>