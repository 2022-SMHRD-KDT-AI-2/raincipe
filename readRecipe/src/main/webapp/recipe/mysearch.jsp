<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	UserVO vo = (UserVO)request.getAttribute("usVO");
	List<my_recipeVO> myrecipeSearch=(List<my_recipeVO>)request.getAttribute("myrecipeSearch");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
     <link rel="stylesheet" href="<%= request.getContextPath() %>/css/myRecipeList.css">
<script type="text/javascript">
	function goMain() {
		location.href="/web/index.jsp";
	}
</script>
</head>
<body>
	
	<div class="container">
		 <div class="wrapper indexPage">
            <img src="<%= request.getContextPath() %>/img/꾸미기.png" alt="" class="header">
            <a href="#"><img src="<%= request.getContextPath() %>/img/left arrow.png" alt="" class="prev"></a>
            <!-- 메인섹션 -->
            <div class="mainSection">
				<!-- 로고 부분 -->
				<div class="logoContainer">
					<img src="<%= request.getContextPath() %>/img/logo.jpg">
				</div>
				<!-- 검색부분 -->
				<div class="searchContainer">
                  <img src="<%= request.getContextPath() %>/img/myrecipe.png" alt="" class="myrecipe_logo">
                    <div class="searchBox"> 
                       	<button type="submit" class="searchbutton">
                        <img src="<%= request.getContextPath() %>/img/search.png" alt=""></button>
                        <input type="text" name="searchMyText" placeholder="검색어를 입력하세요">
                    </div>
                </div>
			</div>
		</div>
		</div>

		<!-- 더보기 할 수 있는 영역 개인레시피 -->
		<div class="content_container">
		<div id="contents2">
			<div id="js-load2" class="main">
				<ul class="lists">
					<c:forEach items="${myrecipeSearch}"  var="vo">
               	<c:if test="${usVO.user_id == vo.user_id}">
					<li class="lists__item js-load">
						<main class="scrip">
							<div class="recipe_list">
								<img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" width="300" alt=""></img>                	 
								<a href="/web/myrecipeContent.do?my_recipe_seq=${vo.getMy_recipe_seq()}" class="food_explain">
									<div class="food_title">${vo.getMy_recipe_name()}</div>
									<div class="food_ingredients">${vo.getMy_recipe_ingredient()}</div>
								</a>
							</div>
						</main>
					</li>
					  </c:if>
           				</c:forEach>
				</ul>
				<!-- 더보기 버튼 -->
				<div id="js-btn-wrap2" class="btn-wrap">
					<a href="javascript:;" class="btn2">더보기</a>
				</div>
			</div>
		</div>
</div>

	
<script src="<%= request.getContextPath()%>/js/search.js"></script>

</body>
</html>