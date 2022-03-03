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
  	function goList() {
		location.href="/web/RecipeList.do"	
	}
  </script>
</head>
<body> 
<div class="container">
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    	 	<tr>
    	 		<td>요리 번호</td>
    	 		<td><%= vo.getRecipe_seq() %></td>
 			</tr>
 			<tr>
 				<td>요리 이름</td>
 				<td><%= vo.getRecipe_name() %></td>
 			</tr>
 			<tr>
 				<td>사진</td>
 				<td><%= vo.getRecipe_img1() %></td>
 			</tr>
 			<tr>
 				<td>재료</td>
 				<td><%= vo.getRecipe_ingredient() %></td>
 			</tr>
 			<tr>
 				<td>레시피</td>
 				<td><%= vo.getRecipe_step() %></td>
 			</tr>
 		</table>
    </div>
    <div class="panel-footer">인공지능 융합서비스 개발자 과정(정현호)</div>
  </div>
</div>
</body>
</html>