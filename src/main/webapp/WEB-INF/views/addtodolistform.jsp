<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddTodoList</title>
<style>
input{
	width: 600px;
	height: 40px;
	background-color: #dbdbf0;
	border: none;
	border-radius: 5px;
}
textarea{
	width: 100%;
	background-color: #dbdbf0;
	border: none;
	border-radius: 5px;
}

button {
	background-color: #5d5dbb;
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

<h2>할일 추가</h2>

<form action="addok" method="post">
<table>
<tr><td><input type="text" name="title" placeholder="제목"/></td></tr>
<tr><td><input type="text" name="content" placeholder="내용"/></td></tr>
<tr><td><input type="date" name="due_date" value="2021-12-01" min="2021-01-01" max="2022-12-31"></td></tr>
</table>
<br>
<button type="submit">추가하기</button>
<button type="button" onclick="location.href='list'">취소하기</button>
</form>

</body>
</html>