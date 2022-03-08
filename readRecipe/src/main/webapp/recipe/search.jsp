<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="java.util.ArrayList"%>
<%
	List<RecipeVO> searchedList=(List<RecipeVO>)request.getAttribute("searchedList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">
			<table class="active table table-striped"
				style="text-align: center; border: 1px solid #dddddd" border="1">
				<thead>
					<tr>
						<th style="background-color: #2e8b57; text-align: center;">번호</th>
						<th style="background-color: #2e8b57; text-align: center;">분류</th>
						<th style="background-color: #2e8b57; text-align: center;">이름</th>
						<th style="background-color: #2e8b57; text-align: center;">사진</th>
					</tr>
				</thead>
				<tbody>
  			<% for(int i=0;i<searchedList.size();i++) {
  			 	RecipeVO vo=searchedList.get(i);  %>
  				<tr>
    				<td><%= vo.getRecipe_seq() %></td>
    				<td><%= vo.getRecipe_type() %>
    				<td><a href="/web/recipeContent.do?Recipe_seq=<%=vo.getRecipe_seq()%>"><%= vo.getRecipe_name() %></a></td>
    				<td><img src = "<%= vo.getRecipe_img1() %>" height="100"></img></td>
  				</tr>
  			<% } %>
				</tbody>
			</table>
			
</body>
</html>