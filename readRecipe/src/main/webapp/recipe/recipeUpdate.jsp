<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	RecipeVO vo=(RecipeVO)request.getAttribute("vo");	
	UserVO uv=(UserVO)request.getAttribute("uv");
%>
<%@ page isELIgnored="false" %>
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
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">TEST</div>
    <div class="panel-body">
   		<form action="/web/recipeUpdate.do" method="post">
    		<input type="hidden" name="recipe_seq" value="${vo.recipe_seq}">
    		<input type="hidden" name="user_id" value="${usVO.user_id}">
    		<input type="hidden" name="channel_id" value="${usVO.user_nick}">
    		<table class="table table-borderd">
    			<tr>
    				<td>이름</td>
    				<td><input type="text" class="form-control" name="my_recipe_name" value="${vo.recipe_name}"></td>
    			</tr>
    			<tr>
    				<td>재료</td>
    				<td><textarea rows="5" class="form-control" name="my_recipe_ingredient">${vo.recipe_ingredient}</textarea></td>
    			</tr>
    			<tr>	
    				<td>레시피</td>
    				<td><textarea rows="30" class="form-control" name="my_recipe_step">${vo.recipe_step}</textarea></td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center">
    					<button type="submit" class="btn btn-info btn-sm">수정하기</button>
    					<button type="reset" class="btn btn-warning btn-sm">취소</button>	
    					<button type="button" class="btn btn-success btn-sm" onclick="location.href='/web/recipeList.do'">리스트</button>
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