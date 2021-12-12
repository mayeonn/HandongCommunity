<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>comment list</title>
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
</head>
<body>
<h1>Comments</h1>

<table id="list" width="90%">

<tr>
	<th>Writer</th>
	<th>Content</th>
	<th>Date</th>
</tr>


<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
	</tr>
</c:forEach>
</table>
<button type="button">Likes</button>
<button type="button" onclick="history.back()">목록</button>
<button type="button" onclick="location.href='../add'">댓글 추가</button>




</body>
</html>