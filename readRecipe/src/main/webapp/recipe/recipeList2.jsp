<%@page import="java.util.List"%>
<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	List<RecipeVO> list=(List<RecipeVO>)request.getAttribute("list");
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
</head>
<body> 
 
<div class="container">
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">TEST</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    		<tr>
    			<td>요리 번호</td>
    			<td>요리 이름</td>
    			<td>사진</td>
  			</tr>
  			<% for(int i=0;i<list.size();i++) {
  			 	RecipeVO vo=list.get(i);  %>
  				<tr>
    				<td><%= vo.getRecipe_seq() %></td>
    				<td><a href="/web/recipeContent.do?Recipe_seq=<%=vo.getRecipe_seq()%>"><%= vo.getRecipe_name() %></a></td>
    				<td><%= vo.getRecipe_img1() %></td>
  				</tr>
  			<% } %>
    	</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
</body>
</html>
