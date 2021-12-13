<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditTodolist</title>
<style>
#cate{
	width: 100px;
	height: 30px;
	background-color: #75bd87;
	border-radius: 2px;
	color: white;
	text-align: center;
}
#cont {
	width: 400px;
	background-color: #dcefe5;
	border-radius: 5px;
}
#butt {
	background-color: #418b62;
	color: white;
	font-size: 15px;
	border: 1px;
	width: 100px;
	height: 50px;
}

</style>
</head>

<body>

<h2>할일 수정</h2>

<form:form modelAttribute="todolistVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table>
		<tr>
			<td id="cate">제목</td>
			<td id="cont"><form:input path="title" /></td>
		</tr>
		<tr>
			<td id="cate">내용</td>
			<td id="cont"><form:input path="content" /></td>
		</tr>
		<tr>
			<td id="cate">기한</td>
			<td id="cont"><form:input path="due_date" /></td>
		</tr>
	</table>
	<input id="butt" type="submit" value="수정하기" />
	<input id="butt" type="button" value="취소하기" onclick="history.back()" />
</form:form>

</body>
</html>