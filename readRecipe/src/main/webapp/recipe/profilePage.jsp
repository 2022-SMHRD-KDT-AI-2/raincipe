<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@page import="readRecipe.model.UserVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% UserVO vo = (UserVO)request.getAttribute("usVO");%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/profile.css">
  <script type="text/javascript">
   	function goOut(){
  		location.href="/web/logout.do";
  	}
   	function goList() {
		location.href="/web/myrecipeList.do"	
	}
   	function favorite(){
  		location.href="/web/showfavorite.do";
   	}
   	function proUp(){
  		location.href="/web/recipe/ProfileUpdate.jsp";
  	}
   </script>
</head>
<body>
    <div class="wrapper">
    <img src="<%= request.getContextPath() %>/img/꾸미기.png" alt="" class="header">
    <a href="#"><img src="<%= request.getContextPath() %>/img/left arrow.png" alt="" class="prev"></a>
    <main class="my_page_head my_page_section">
        <div class="my_profile">
            <div class="my_profile_img">
                <img src="https://blog.kakaocdn.net/dn/dJRe0g/btqWUruqSFN/7lQyAEpK4ZnmBoHrU5lTAk/img.png" alt="">
                <a onclick="proUp()" class="my_profile_change">프로필 수정</a>
            </div>
        </div>
        <div class="my_nick">
            <div id="my_nick_name">
                <span><%=vo.getUser_nick() %></span>
            </div>
            <div id="my_introduction">
                <span><%=vo.getUser_intro() %></span>
            </div>
        </div>

        <div class="create">
            <div class="community_create">
                <a href="#" class="btn">글 작성</a>	
                <Button class = "btn btn-warning btn-sm" onclick="goList()">
                	<a href="#">내 레시피 리스트</a>
                </Button>
                 <Button class = "btn" onclick="favorite()">
                	<a href="#">즐겨찾기 리스트</a>
                </Button>
            </div>
        </div>
    </main>
    </div>
    

      <!-- 트렌드요리 -->

      <div class="content-container">
        <div class="recipe-list-container">
            <div class="recipe-title-section">
                <h2 class="recipe-list-title">여기에 타이틀을 적어요</h2>
                <a href="#" class="more-view">더보기</a>
            </div>
                <div class="recipe-list-wrapper">
                    <div class="recipe-list">
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                    </div>
                    <img src="<%= request.getContextPath() %>/img/right arrow.png" class="arrow">
                </div>
        </div>

        <div class="recipe-list-container">
            <div class="recipe-title-section">
                <h2 class="recipe-list-title">여기에 타이틀을 적어요</h2>
                <a href="#" class="more-view">더보기</a>
            </div>
                <div class="recipe-list-wrapper">
                    <div class="recipe-list">
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                    </div>
                    <img src="<%= request.getContextPath() %>/img/right arrow.png" class="arrow">
                </div>
        </div>

        <div class="recipe-list-container">
            <div class="recipe-title-section">
                <h2 class="recipe-list-title">여기에 타이틀을 적어요</h2>
                <a href="#" class="more-view">더보기</a>
            </div>
                <div class="recipe-list-wrapper">
                    <div class="recipe-list">
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://cdn.pixabay.com/photo/2020/03/26/10/58/norway-4970080_960_720.jpg" alt="">
                            <span class="recipe-list-item-title">레시피 이름</span>
                            <p class="recipe-list-item-desc">여기는 요리 할때 설명입니다.</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                    </div>
                    <img src="<%= request.getContextPath() %>/img/right arrow.png" class="arrow">
                </div>
             </div>
        </div>
        
        <!-- 더보기 버튼 -->
        <div class="more_view">
            <a href="#" class="btn"  onclick="goOut()">LogOut</a>	
        </div>
<script src="<%= request.getContextPath() %>/js/profile.js"></script>
</body>
</html>