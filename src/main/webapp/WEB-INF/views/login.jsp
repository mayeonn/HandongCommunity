<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<style>
img, label {
	display: inline-block;
}

label {
	width: 130px
}
textarea{
	padding: 10px;
	width: 300px;
	height: 100%;
	border: none;
	border-radius: 3px;
}
input{
	padding: 10px;
	width: 300px;
	border: none;
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
</style>
</head>
<body>
	<div style='width: 100%; text-align: center; padding-top: 100px'>
		<img src='../img/snowman.jpg' height="250">
		<form method="post" action="loginOk">
			<div>
				<label>User ID</label><br><input type='text' name='userid' />
			</div><br>
			<div>
				<label>Password</label><br><input type='password' name='password' />
			</div>
			<br>
			<button type='submit'>login</button>
		</form>
	</div>
</body>
</html>