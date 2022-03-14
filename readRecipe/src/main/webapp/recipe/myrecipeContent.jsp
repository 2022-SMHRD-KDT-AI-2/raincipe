<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false"%>
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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/recipeclick.css">
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
<div id="header">
        <img src="<%=request.getContextPath()%>/img/꾸미기.png" id="logo">
    </div>
    
    <div id="wrapper">

        <div id="content">

            <div class="box1_1">
                <div class="box1_int1">
                	<%-- <img src = "${vo.recipe_img1}" class=Img></img> --%>
                        <Button id="start" class = "btn btn-success btn-sm" onclick="goStep(${vo.recipe_seq})">레시피 시작</Button>
                        <button id="voice_start" class = "btn btn-success btn-sm">음성 시작</button>
                         	<c:if test="${!empty usVO}">
 				   			<Button id="bookmark" class = "btn btn-success btn-sm" onclick="goFa(${vo.recipe_seq})">즐겨찾기</Button>
							 <!-- <button id="subscribe" class = "btn btn-success btn-sm">구독 하기</button> -->
 							</c:if>
 							<c:if test="${empty usVO}">
 				   			<Button id="bookmark" class = "btn btn-success btn-sm">즐겨찾기</Button>
 							</c:if>
                         
                </div>
            </div>

            <div class="box2">
            	 <div>
                    <div id="box2_int3">${vo.my_recipe_name}</div>
                </div>
                <div>
                    <div id="box2_int1">${vo.my_recipe_ingredient}</div>
                </div>
                <div>
                    <div id="box2_int2"><br>${vo.my_recipe_step}</div>
                </div>
            </div>

            <div class="btn_area">
                <Button class = "btn btn-info btn-sm" onclick="goUpForm(${vo.my_recipe_seq})">수정</Button>
	 			<Button class = "btn btn-warning btn-sm" onclick="goDel(${vo.my_recipe_seq})">삭제</Button>
 				  <Button class = "btn btn-success btn-sm" onclick="goList()">리스트</Button>
            </div>

        </div>

    </div>

</body>
</html>