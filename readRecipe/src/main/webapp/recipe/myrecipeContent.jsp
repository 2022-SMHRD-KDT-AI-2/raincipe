<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
 <% 
 	my_recipeVO vo=(my_recipeVO)request.getAttribute("vo");
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	function goList() {
		location.href="/web//myrecipeList.do"	
	}
  	function goDel(my_recipe_seq){
  		location.href="/web//myrecipeDelete.do?my_recipe_seq="+my_recipe_seq;
  	}
  	function goUpForm(my_recipe_seq){
  		location.href="/web//myrecipeUpdateForm.do?my_recipe_seq="+my_recipe_seq;	
  	}
  </script>
</head>
<body>
<div class="container">
  <h2>TEST</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    	 	<tr>
    	 		<td>번호</td>
    	 		<td>${vo.my_recipe_seq}</td>
 			</tr>
 			<tr>
 				<td>제목</td>
 				<td>${vo.my_recipe_name}</td>
 			</tr>
 			<tr>
 				<td>레시피</td>
 				<td>${vo.my_recipe_step}</td>
 			</tr>
 			<tr>
 				<td>작성일</td>
 				<td>${fn:split(vo.reg_date," ")[0]}</td>
 			</tr>
 			<tr>
 				<td colspan="2" align="center">
	 				<Button class = "btn btn-info btn-sm" onclick="goUpForm(${vo.my_recipe_seq})">수정</Button>
	 				<Button class = "btn btn-warning btn-sm" onclick="goDel(${vo.my_recipe_seq})">삭제</Button>
 				   <Button class = "btn btn-success btn-sm" onclick="goList()">리스트</Button>
 				</td>
 			</tr>
 		</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
</body>
</html>