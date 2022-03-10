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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="cssFolder/ex02.css">
</head>
<body>
<div class="container">
     <!-- 웹페이지를 감싸는  -->
     <div class="wrapper indexPage">
        <img src="./cssFolder/img/꾸미기2.png" alt="" class="header">
        <!-- 메인섹션 -->
        <div class="mainSection">
            <!-- 로고 부분 -->
            <div class="logoContainer">
                <img src="./cssFolder/img/facebook_cover_photo_1.png" alt="그림 나오는지">
            </div>

            <!-- 검색부분 -->
         <form method="post" name="search" action="/web/search.do">
            <div class="searchContainer">
                <div class="searchBox">    
                    <img src="https://cdn-icons.flaticon.com/png/512/5177/premium/5177416.png?token=exp=1646392208~hmac=1db8b20b6104848483e07829b6f56547" alt="">
                    <input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100">
                    <button type="submit" class="btn btn-success">검색</button>
                </div>
            </div>
         </form> 
        </div>
    </div>

	<% for(int i=0;i<searchedList.size();i++) {
  			 RecipeVO vo=searchedList.get(i);  %>
	<section class="my_page">
		<div class="page_area">

			<main class="recipe_view">
				<div class="food_photo">
					<img src="<%= vo.getRecipe_img1() %>" height="100"></img>
				</div>
				<div class="food_explain">
					<div class="food_title">
						<a href="/web/recipeContent.do?Recipe_seq=<%=vo.getRecipe_seq()%>"><%= vo.getRecipe_name() %></a>
					</div>
					<div class="food_ingredients"><%= vo.getRecipe_ingredient() %>/
					</div>
				</div>
			</main>
		</div>
	</section>
	<% } %>
</div>
</body>
</html>