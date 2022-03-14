<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<my_recipeVO> list=(List<my_recipeVO>)request.getAttribute("list");
%>
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
  <h2>TEST</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
	</div>
	
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    		<tr>
    			<td>내 레시피 이름</td>
    			<td>대표 사진</td>
  			</tr>	
  			<c:forEach items="${list}"  var="vo">
  			 	<c:if test="${usVO.user_id == vo.user_id}">
  					<tr>
    					<td><a href="/web/myrecipeContent.do?my_recipe_seq=${vo.getMy_recipe_seq()}"><${vo.getMy_recipe_name()}></a></td>
    					<td><img src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="50"></img></td>
  					</tr>
  				</c:if>
  			</c:forEach>
    	</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
</body>
</html>
