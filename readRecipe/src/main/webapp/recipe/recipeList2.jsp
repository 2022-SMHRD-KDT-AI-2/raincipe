<%@page import="java.util.List"%>
<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- Ȯ���غ��ϱ� jsp���� el�� ������ �����ֳ׿� �׷��� �ؿ� isELIgnored="false"�̰� �ְ� �� ������ el�� ����ϼž��ؿ� --%>
<%-- �� �ڸ��� jsp�� �̰� �־���ߵǳ׿� --%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
   <script type="text/javascript">
  	function goOut(){
  		location.href="/web/logout.do";
  	}
  </script>
</head>
<body> 
 
<div class="container">
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
    	<c:if test="${empty usVO}">
			<form class="form-inline" action="/web/login.do" method="post">
	  			<div class="form-group">
	    			<label for="user_id">ID:</label>
	    			<input type="text" class="form-control" name="user_id">
	  			</div>
	  			<div class="form-group">
	    			<label for="user_pw">Password:</label>
	    				<input type="password" class="form-control" name="user_pw">
	  			</div>
	 			<button type="submit" class="btn btn-default">�α���</button>
			</form>
		</c:if>
		
		<c:if test="${!empty usVO}">
			<div>
				<label>${usVO.user_nick}�� �湮�� ȯ���մϴ�.</label>
				<button class="btn btn-info btn-sm" onclick="goOut()">�α׾ƿ�</button>
			</div>
		</c:if>
	</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    		<tr>
    			<td>�丮 ��ȣ</td>
    			<td>�丮 �̸�</td>
    			<td>����</td>
  			</tr>
  			<% for(int i=0;i<list.size();i++) {
  			 	RecipeVO vo=list.get(i);  %>
  				<tr>
    				<td><%= vo.getRecipe_seq() %></td>
    				<td><a href="/web/recipeContent.do?Recipe_seq=<%=vo.getRecipe_seq()%>"><%= vo.getRecipe_name() %></a></td>
    				<td><img src = "<%= vo.getRecipe_img1() %>" height="100"></img></td>
  				</tr>
  			<% } %>
    	</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
</body>
</html>
