<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Comment</title>
<style>
input{
	width: 100%;
	height: 30px;
	background-color: #d6e0f5;
	border: none;
	border-radius: 5px;
}
textarea{
	width: 100%;
	background-color: #d6e0f5;
	border: none;
	border-radius: 5px;
}

button {
	background-color: #535379;
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

<h3>${board_id} - 댓글 추가</h3>


<form action="../comment/addok" method="POST">
<table>
<input type="hidden" name="board_id" value= "${board_id}">
<tr><td><input type="text" name="writer" placeholder="글쓴이"/></td></tr>
<tr><td><textarea cols="100" rows="10" name="content" placeholder="내용"></textarea></td></tr>
</table>
<button type="submit">추가하기</button>
<button type="button" onclick="location.href='../board/list'">취소하기</button>
</form>

</body>
</html>