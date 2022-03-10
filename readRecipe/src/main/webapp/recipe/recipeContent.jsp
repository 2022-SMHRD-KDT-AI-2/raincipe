<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <% 
 	RecipeVO vo=(RecipeVO)request.getAttribute("vo");
 	UserVO uv=(UserVO)request.getAttribute("uv");
 %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/css/recipeclick.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 

  <script type="text/javascript">
	function goList() {
 		 history.back();
	}
  	function goStep(Recipe_seq){
  		location.href="/web//recipeStep.do?Recipe_seq="+Recipe_seq;
  	}
  	function goUp(Recipe_seq){
  		location.href="/web//recipeUpdateForm.do?Recipe_seq="+Recipe_seq;
  	}
  </script>
</head>
<body> 
 <div id="header">
        <img src="<%=request.getContextPath()%>/img/꾸미기.png" id="logo">
        <a href="#"><img src="<%=request.getContextPath()%>/img/left arrow.png" alt="" class="prev"></a>
    </div>
    
    <div id="wrapper">

        <div id="content">

            <div class="box1">
                <div class="box1_int1">
                	<img src = "${vo.recipe_img1}" class=Img></img>
                        <Button id="start" class = "btn btn-success btn-sm" onclick="goStep(${vo.recipe_seq})">레시피 시작</Button>
                        <!-- <Button id="list" class = "btn btn-success btn-sm" onclick="goList()">리스트</Button> -->
                       	<c:if test="${!empty usVO}">
 				   			<Button class = "btn btn-success btn-sm" onclick="goUp(${vo.recipe_seq})">수정하기</Button>
 						</c:if>
                         <!-- <button type="button" id="voice_start">
                            <a href="">음성 시작</a>
                         </button> -->
                         <button id="script" class = "btn btn-success btn-sm">
                            <a href="">스크랩</a>
                         </button>
                         <button id="subscribe" class = "btn btn-success btn-sm">
                            <a href="">구독 하기</a>
                         </button>
                         
                </div>
            </div>

            <div class="box2">
            	 <div>
                    <div id="box2_int3">${vo.recipe_name}</div>
                </div>
                <div>
                    <div id="box2_int1">${vo.recipe_ingredient}</div>
                </div>
                <div>
                    <div id="box2_int2">레시피전체</div>
                </div>
            </div>

            <div class="btn_area">
                <button type="button" id="recipe_modify">
                    <span><a href="">나만의 레시피 저장</a></span>
                </button>
                <Button id="list"  onclick="goList()">리스트</Button>
            </div>

        </div>

    </div>
    
    

<%-- <div class="container">
  <h2>MVC Framework 01</h2>
  <div class="panel panel-default">
    <div class="panel-heading">TEST</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
 			<tr>
 				<td>요리 이름</td>
 				<td>${vo.recipe_name}</td>
 			</tr>
 			<tr>
 				<td>사진</td>
 				<td><img src = "${vo.recipe_img1}" height="100"></img></td>
 			</tr>
 			<tr>
 				<td>재료</td>
 				<td>${vo.recipe_ingredient}</td>
 			</tr>
 			<tr>
 				<td colspan="2" align="center">
 				   <Button class = "btn btn-success btn-sm" onclick="goStep(${vo.recipe_seq})">레시피 시작</Button>
 				   <Button class = "btn btn-success btn-sm" onclick="goList()">리스트</Button>
 				   <c:if test="${!empty usVO}">
 				   		<Button class = "btn btn-success btn-sm" onclick="goUp(${vo.recipe_seq})">수정하기</Button>
 					</c:if>
 				</td>
 			</tr>
 		</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div> --%>
</body>
</html>