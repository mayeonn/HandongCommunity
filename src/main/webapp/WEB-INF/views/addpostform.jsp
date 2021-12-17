<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddPost</title>
<style>
input{
	width: 100%;
	height: 30px;
	background-color: #dcefe5;
	border: none;
	border-radius: 5px;
}
textarea{
	width: 100%;
	background-color: #dcefe5;
	border: none;
	border-radius: 5px;
}

button {
	background-color: #418b62;
	color: white;
	font-size: 15px;
	border: 1px;
	width: 80px;
	height: 40px;
	border-radius: 5px;
}
body{margin: 50px;}
</style>
</head>

<body>

<h2>게시물 추가</h2>

<form action="addok" method="POST">
<table>
<tr><td><input type="text" name="title" placeholder="제목"/></td></tr>
<tr><td><input type="text" name="writer" placeholder="글쓴이"/></td></tr>
<tr><td><div class="textwrapper"><textarea cols="100"rows="10" name="content" placeholder="내용"></textarea></div></td></tr>
</table>
<button type="submit">추가하기</button>
<button type="button" onclick="location.href='list'">취소하기</button>
</form>

</body>
</html>