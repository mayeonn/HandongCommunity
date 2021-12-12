<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posts</title>
<style>
button {
	float: right;
}

#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 80%;
  float: right;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'deleteok/' + id;
	}
</script>
</head>
<body>

<h1>Handong Community</h1>


<button type="button" onclick="location.href='/board/add'">새글작성</button>
<br><br>

<!-- Sidebar -->
<div class="w3-sidebar w3-light-grey w3-bar-block" style="width:19%">
  <h3 class="w3-bar-item">Menu</h3>
  <a href="../todolist/list" class="w3-bar-item w3-button">TodoList</a>
  <a href="../login/logout" class="w3-bar-item w3-button">logout</a>
</div>

<!--  Board  -->
<table id="list" width="90%">

<tr>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Date</th>
	<th>Likes</th>
	<th>Comments</th>
	<th>View post</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>

<!-- post 목록 출력 -->
<!-- 반복문에서 list객체(BoardVO 타입)를 u라는 변수명으로 사용  -->
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td>${u.likes}</td>
		<td>${u.numOfComments}</td>
		<td><a href="../comment/list/${u.seq}">댓글보기</a></td>
		<td><a href="/board/editform/${u.seq}">글수정</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>
	</tr>
</c:forEach>
</table>

</body>
</html>

