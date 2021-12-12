<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posts</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
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
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='/board/deleteok/' + id;
	}
</script>
</head>

<body>

<table id="list" width="90%">
<tr>
	<th>Title</th>
	<th>Writer</th>
	<th>Date</th>
	<th>Content</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>

<%//post 목록 출력 %>
<%//반복문에서 list객체(BoardVO 타입)를 u라는 변수명으로 사용 %>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.regdate}</td>
		<td>${u.content}</td>
		<td><a href="/board/editpostform/${u.seq}">수정</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">삭제</a></td>
	</tr>
</c:forEach>

</table>
<br/><button type="button" onclick="location.href='addpostform.jsp'">새글작성</button>
</body>
</html>

