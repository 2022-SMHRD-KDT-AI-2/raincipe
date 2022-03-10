<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="./cssFolder/ex01.css">
</head>
<body>
	<form class="form-inline" action="/web/login.do" method="post">
		<div class="form-group">
			<label for="user_id">ID:</label> <input type="text"
				class="form-control" name="user_id">
		</div>
		<div class="form-group">
			<label for="user_pw">Password:</label> <input type="password"
				class="form-control" name="user_pw">
		</div>
		<button type="submit" class="btn btn-default">로그인</button>
	</form>
</body>
</html>