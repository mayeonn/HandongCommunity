<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>comment list</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = '../deleteok/' + id;
	}
	
</script>
<style>
	li{
		background-color: #dbe2f0;
	}
	h5{
		color: gray;
	}
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
    .commentcard{
   		padding: 10px;
   		margin: 5px;
    	border: 3px solid #f1f1f1;
    	border-radius: 10px;
    }
    .postcontent{
    	padding: 10px;
    	background-color: #d6e0f5;
    	border-radius: 10px;
    	}
    .btn{
    float: right;
    }
  </style>
</head>
<body>



<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h2>Comments</h2>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="../../board/list">목록</a></li>
      </ul><br>
    </div>

    <div class="col-sm-9">
      
      <br><br>
      
      <c:forEach items="${list}" var="u">
	<div class="commentcard">
      <a class="btn btn-light" href="javascript:delete_ok('${u.seq}')">댓글삭제</a>
      <h4>${u.writer}</h4>
      <h5><span class="glyphicon glyphicon-time"></span> ${u.regdate}</h5>
      <p class="postcontent">${u.content}</p>
      <br>
	</div>
	</c:forEach>
    </div>
        </div>
            </div>

</body>
</html>