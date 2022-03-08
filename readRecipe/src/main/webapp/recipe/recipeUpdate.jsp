<%@page import="readRecipe.model.RecipeVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	RecipeVO vo=(RecipeVO)request.getAttribute("vo");	
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
  	function goList(){
  		location.href="/web/recipeList.do";
  	}
  </script>
</head>
<body> 
 
<div class="container">
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">TEST</div>
    <div class="panel-body">
    		<input type="hidden" name="recipe_seq" value="<%=vo.getRecipe_seq()%>">
    		<table class="table table-borderd">
    			<tr>
    				<td>이름</td>
    				<td><input type="text" class="form-control" name="recipe_name" value="<%=vo.getRecipe_name()%>"></td>
    			</tr>
    			<tr>
    				<td>재료</td>
    				<td><textarea rows="3" class="form-control" name="recipe_ingredient"><%=vo.getRecipe_ingredient()%></textarea></td>
    			</tr>
    			<tr>	
    				<td>레시피</td>
    				<td><textarea rows="30" class="form-control" name="recipe_ingredient"><%=vo.getRecipe_step()%></textarea></td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center">
    					<button class="btn btn-info btn-sm">수정하기</button>
    					<button class="btn btn-warning btn-sm">취소</button>	
    					<Button class = "btn btn-success btn-sm" onclick="goList()">리스트</Button>
    				</td>
    			</tr>
    		</table>
    </div>
    <div class="panel-footer">인공지능 융합서비스 개발자 과정(정현호)</div>
  </div>
</div>
</body>
</html>