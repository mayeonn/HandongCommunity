<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Comment</title>
<style>
input{
	width: 500px;
	height: 30px;
	background-color: #d9d9d9;
	border: none;
	border-radius: 5px;
}
textarea{
	background-color: #d9d9d9;
	border: none;
	border-radius: 5px;
}
button {
	background-color: #535379;
	color: white;
	font-size: 15px;
	border: 1px;
	width: 80px;
	height: 30px;
}
</style>
</head>

<body>

<h3>댓글 추가</h3>

<form action="../comment/addok" method="POST">
<table>
<tr><td><input type="text" name="board_id" placeholder="seq"/></td></tr>
<tr><td><input type="text" name="writer" placeholder="글쓴이"/></td></tr>
<tr><td><textarea cols="61" rows="10" name="content" placeholder="내용"></textarea></td></tr>
</table>
<button type="submit">추가하기</button>
<button type="button" onclick="location.href='../board/list'">취소하기</button>
</form>

</body>
</html>