<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo List</title>
<style>

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
<h1>TodoList</h1>

<!-- Button -->
<button type="button" onclick="location.href='../board/list'">목록</button>
<button type="button" onclick="location.href='add'">일정 추가</button>


<table id="list" width="90%">

<tr>
	<th>Title</th>
	<th>Content</th>
	<th>Due Date</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>

<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.title}</td>
		<td>${u.content}</td>
		<td>${u.due_date}</td>
		<td><a href="editform/${u.seq}">일정수정</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">일정삭제</a></td>
	</tr>
</c:forEach>
</table>



</body>
</html>