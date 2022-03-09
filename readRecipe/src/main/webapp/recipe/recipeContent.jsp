<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <% 
 	RecipeVO vo=(RecipeVO)request.getAttribute("vo");
 	UserVO uv=(UserVO)request.getAttribute("uv");
 %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script type="text/javascript">
	function goList() {
 		 history.back();
	}
  	function goStep(Recipe_seq){
  		location.href="/web//recipeStep.do?Recipe_seq="+Recipe_seq;
  	}
  	function goUp(Recipe_seq){
  		location.href="/web//recipeUpdateForm.do?Recipe_seq="+Recipe_seq;
  	}
  </script>
</head>
<body> 
<div class="container">
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">TEST</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
 			<tr>
 				<td>요리 이름</td>
 				<td>${vo.recipe_name}</td>
 			</tr>
 			<tr>
 				<td>사진</td>
 				<td><img src = "${vo.recipe_img1}" height="100"></img></td>
 			</tr>
 			<tr>
 				<td>재료</td>
 				<td>${vo.recipe_ingredient}</td>
 			</tr>
 			<tr>
 				<td colspan="2" align="center">
 				   <Button class = "btn btn-success btn-sm" onclick="goStep(${vo.recipe_seq})">레시피 시작</Button>
 				   <Button class = "btn btn-success btn-sm" onclick="goList()">리스트</Button>
 				   <c:if test="${!empty usVO}">
 				   		<Button class = "btn btn-success btn-sm" onclick="goUp(${vo.recipe_seq})">수정하기</Button>
 					</c:if>
 				</td>
 			</tr>
 		</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
</body>
</html>