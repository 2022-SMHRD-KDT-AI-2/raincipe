<%@page import="readRecipe.model.RecipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <% 
 	RecipeVO vo=(RecipeVO)request.getAttribute("vo");
 	UserVO uv=(UserVO)request.getAttribute("uv");
 	String steps = vo.getRecipe_step();
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
	function goFa(Recipe_seq){
  		location.href="/web//favorite.do?Recipe_seq="+Recipe_seq;
  	}
  </script>
</head>
<body> 
 <div id="header">
        <img src="<%=request.getContextPath()%>/img/꾸미기.png" id="logo">
    </div>
    
    <div id="wrapper">

        <div id="content">

            <div class="box1">
                <div class="box1_int1">
                	<img src = "${vo.recipe_img1}" class=Img></img>
                        <Button id="start" class = "btn btn-success btn-sm" onclick="goStep(${vo.recipe_seq})">레시피 시작</Button>
                        <button id="voice_start" class = "btn btn-success btn-sm">음성 시작</button>
                         	<c:if test="${!empty usVO}">
 				   			<Button id="bookmark" class = "btn btn-success btn-sm" onclick="goFa(${vo.recipe_seq})">즐겨찾기</Button>
 				   			<button id="subscribe" class = "btn btn-success btn-sm">구독 하기</button>
 							</c:if>
 							<c:if test="${empty usVO}">
 				   			<Button id="bookmark" class = "btn btn-success btn-sm">즐겨찾기</Button>
 				   			<button id="subscribe" class = "btn btn-success btn-sm">구독 하기</button>
 							</c:if>
                         
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
                    <div id="box2_int2"><br></div>
                </div>
            </div>

            <div class="btn_area">
                <Button id="update_recipe" class = "btn btn-success btn-sm" onclick="goUp(${vo.recipe_seq})">나만의 레시피 저장</button>
                <Button id="list"  onclick="goList()">리스트</Button>
            </div>

        </div>

    </div>
    <script>
    	var step_str = "<%=steps%>"
    	let step_list = step_str.split(';')
    	console.log(step_list)
    	$(function(){
    		for (const step of step_list){
    			$('#box2_int2').append("<p>"+step+"</p><br>")
    		}
    	})
    </script>
</body>
</html>