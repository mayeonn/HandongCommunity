<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditPost</title>
<style>
#cate{
	width: 100px;
	height: 30px;
	background-color: #75bd87;
	border-radius: 3px;
	color: white;
	text-align: center;
}

#butt {
	background-color: #418b62;
	color: white;
	font-size: 15px;
	border: none;
	border-radius: 3px;
	width: 100px;
	height: 50px;
}
textarea{
background-color: #dcefe5;
	padding: 10px;
	width: 100%;
	height: 100%;
	border: none;
	border-radius: 3px;
}
input{
background-color: #dcefe5;
	padding: 10px;
	width: 100%;
	border: none;
}
</style>
</head>

<body>

<h2>게시물 수정</h2>

<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq" />
	<table>
		<tr>
			<td id="cate">제목</td>
			<td id="cont"><form:input path="title" /></td>
		</tr>
		<tr>
			<td id="cate">글쓴이</td>
			<td id="cont"><form:input path="writer" /></td>
		</tr>
		<tr>
			<td id="cate">내용</td>
			<td id="cont"><form:textarea cols="100" rows="10" path="content" /></td>
		</tr>
	</table>
	<br>
	<input id="butt" type="submit" value="수정하기" />
	<input id="butt" type="button" value="취소하기" onclick="history.back()" />
</form:form>

</body>
</html>