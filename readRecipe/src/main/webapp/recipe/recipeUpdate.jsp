<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	RecipeVO vo=(RecipeVO)request.getAttribute("vo");	
	UserVO uv=(UserVO)request.getAttribute("uv");
%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="../css/reviserecipe.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body> 
 
    <div id="header">
        <img src="../img/꾸미기.png" id="logo">
        <a href="#"><img src="../img/left arrow.png" alt="" class="prev"></a>
    </div>

    <div id="wrapper">

        <div id="content">
        	<form action="/web/recipeUpdate.do" method="post">
    		<input type="hidden" name="recipe_seq" value="${vo.recipe_seq}">
    		<input type="hidden" name="user_id" value="${usVO.user_id}">
    		<input type="hidden" name="channel_id" value="${usVO.user_nick}">
    		</form>

            <div>
                <span class="box int_title">
                    <!-- <input type="text" id="title" class="int" maxlength="20" placeholder="제목을 입력하세요"> -->
                    <input id="title"  type="text" class="int form-control" name="my_recipe_name" value="${vo.recipe_name}">
                    <img src="../img/camera.png" id="title_img1" class="Img">
                    <!-- <textarea id="ingredient" class="int" placeholder="재료 수정하세요"></textarea> -->
                    <textarea id="ingredient" rows="5" class="int form-control" name="my_recipe_ingredient">${vo.recipe_ingredient}</textarea>
                </span>
            </div>

            <div>
                <h3 class="join_title">
                </h3>
                <span class="box int_recipe_content">
                    <!-- <textarea id="recipe_content" class="int" placeholder="레시피 내용을 수정하세요"></textarea> -->
                    <textarea id="recipe_content" rows="30" class="int form-control" name="my_recipe_step">${vo.recipe_step}</textarea>
                </span>
            </div>

            <div class="btn_area">
               <!--  <button type="button" id="cancel">
                    <span><a href="">취소</a></span>
                </button>
                <button type="button" id="confirm">
                    <span><a href="">수정 레시피로 저장</a></span>
                </button> -->
                <button id="confirm" type="submit" class="btn btn-info btn-sm">수정하기</button>
    			<button id="cancel" type="reset" class="btn btn-warning btn-sm">취소</button>
                <button id="golist" type="button" class="btn btn-success btn-sm" onclick="location.href='/web/recipeList.do'">리스트</button>
            </div>

        </div>

    </div>
    <script src="main.js"></script>

</body>
</html>