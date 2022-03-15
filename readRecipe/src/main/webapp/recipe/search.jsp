<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="java.util.ArrayList"%>
<%
	List<RecipeVO> searchedList=(List<RecipeVO>)request.getAttribute("searchedList");
	List<my_recipeVO> mySearchedList=(List<my_recipeVO>)request.getAttribute("mySearchedList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/search.css">
<script type="text/javascript">
	function goMain() {
		location.href="/web/index.jsp";
	}
</script>
</head>
<body>
	<div class="container">
		<div class="wrapper indexPage">
			<img src="<%= request.getContextPath() %>/img/꾸미기.png"
				class="header"> <a href="#"><img
				src="<%= request.getContextPath()%>/img/left arrow.png"
				class="prev" onclick="goMain()"></a>
			<!-- 메인섹션 -->
			<div class="mainSection">
				<!-- 로고 부분 -->
				<div class="logoContainer">
					<img src="<%= request.getContextPath() %>/img/logo.jpg">
				</div>
				<!-- 검색부분 -->
				<div class="searchContainer">
					<div class="searchBox">
						<img src="<%= request.getContextPath()%>/img/search.png">
						<input type="text" placeholder="입력한 검색어">
					</div>
				</div>
			</div>
		</div>

		<!-- 더보기 할 수 있는 영역 -->
		<div id="contents">
			<div id="js-load" class="main">
				<ul class="lists">
					<% for(int i=0;i<searchedList.size();i++) {
  			 		RecipeVO vo=searchedList.get(i);  %>
					<li class="lists__item js-load">
						<main class="scrip">
							<div class="recipe_list">
								<a href="#" class="food_photo"> <img
									src="<%= vo.getRecipe_img1() %>" alt="" class=food_img>
								</a> 
								<a href=/web/recipeContent.do?Recipe_seq=<%=vo.getRecipe_seq()%> class="food_explain">
									<div class="food_title"><%= vo.getRecipe_name() %></div>
									<div class="food_ingredients"><%= vo.getRecipe_ingredient() %></div>
								</a>
							</div>
						</main>
					</li>
					<% } %>
				</ul>
				<!-- 더보기 버튼 -->
				<div id="js-btn-wrap" class="btn-wrap">
					<a href="javascript:;" class="btn">더보기</a>
				</div>
			</div>
			
			<div id="js-load2" class="main">
				<ul class="lists">
					<% for(int i=0;i<mySearchedList.size();i++) {
					my_recipeVO myVo= mySearchedList.get(i);  %>
					<li class="lists__item js-load2">
						<main class="scrip">
							<div class="recipe_list">
								<a href="#" class="food_photo"> <img
									src="https://img.icons8.com/stickers/2x/gmail-new.png"" alt="" class=food_img>
								</a> 
								<a href=/web/recipeContent.do?Recipe_seq=<%=myVo.getMy_recipe_seq()%> class="food_explain">
									<div class="food_title"><%= myVo.getMy_recipe_name() %></div>
									<div class="food_ingredients"><%= myVo.getMy_recipe_ingredient() %></div>
								</a>
							</div>
						</main>
					</li>
					<% } %>
				</ul>
				<!-- 더보기 버튼 -->
				<div id="js-btn-wrap2" class="btn-wrap">
					<a href="javascript:;" class="btn">더보기</a>
				</div>
			</div>
		</div>
	</div>
<script src="<%= request.getContextPath()%>/js/search.js"></script>

</body>
</html>