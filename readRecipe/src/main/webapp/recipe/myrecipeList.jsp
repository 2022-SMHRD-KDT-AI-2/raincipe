<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	List<my_recipeVO> list=(List<my_recipeVO>)request.getAttribute("list");


   UserVO uv=(UserVO)request.getAttribute("uv");
%>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/myRecipeList.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body> 
 <div class="container">
        <!-- 웹페이지를 감싸는  -->
        <div class="wrapper indexPage">
            <img src="<%= request.getContextPath() %>/img/꾸미기.png" alt="" class="header">
            <a href="#"><img src="<%= request.getContextPath() %>/img/left arrow.png" alt="" class="prev"></a>
            <!-- 메인섹션 -->
            <div class="mainSection">
               
                <!-- 검색부분 -->
                <div class="searchContainer">
                  <img src="<%= request.getContextPath() %>/img/myrecipe.png" alt="" class="myrecipe_logo">
                    <div class="searchBox">    
                        <img src="<%= request.getContextPath() %>/img/search.png" alt="">
                        <input type="text"  placeholder="검색어를 입력하세요">
                    </div>
                </div>
            </div>
        </div>
	</div>

 
<div class="content_wrapper">
  <div class="content_container">
    <div id="contents">
       <div  class="main">  
       
           <c:forEach items="${list}"  var="vo">
               <c:if test="${usVO.user_id == vo.user_id}">
                 <div class="recipe_list">
	                 <div class="recipe_list_title">
	                 <img class="food_photo" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832"></img>
	                 <a class="food_title" href="/web/myrecipeContent.do?my_recipe_seq=${vo.getMy_recipe_seq()}"><${vo.getMy_recipe_name()}></a>
	                 </div>
                 </div>
              </c:if>
           </c:forEach>
       </div>
    </div>
  </div>
</div>
</body>
</html>