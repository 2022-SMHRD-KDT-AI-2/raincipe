<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body> 
 
<div class="container">
  <h2>MVC Framework 03</h2>
  <div class="panel panel-default">
    <div class="panel-heading">개인레시피</div>
    <div class="panel-body">
    	<form action="/web/boardUpdate.do" method="post">
    		<input type="hidden" name="recipe_seq" value="${vo.recipe_seq}">
    		<table class="table table-borderd">
    			<tr>
    				<td>요리이름</td>
    				<td><input type="text" class="form-control" name="title" value="${vo.recipe_name}"></td>
    			</tr>
    			<tr>	
    				<td>레시피</td>
    				<td><textarea rows="10" class="form-control" name="content">${vo.recipe_step}</textarea></td>
    			</tr>
    			<tr>
    				<td>작성자</td>
    				<td><input type="text" class="form-contrrol" readonly="readonly" value="${vo.user_id}"></td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center">
    					<button class="btn btn-info btn-sm">수정하기</button>
    					<button class="btn btn-warning btn-sm">취소</button>	
    					<button class="btn btn-success btn-sm" location.href="/web/persnalList.do">리스트</button>
    				</td>
    			</tr>
    		</table>
    	</form>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
</body>
</html>