<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@page import="readRecipe.model.UserVO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	UserVO vo = (UserVO)request.getAttribute("usVO"); 
	List<my_recipeVO> list=(List<my_recipeVO>)request.getAttribute("list");
%>
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
	function goMain() {
		location.href="/web/index.jsp";
	}
   </script>
</head>
<body>
    <div class="wrapper">
    <img src="<%= request.getContextPath() %>/img/꾸미기.png" alt="" class="header">
    <a href="#"><img src="<%= request.getContextPath() %>/img/left arrow.png" alt="" class="prev" onclick="goMain()"></a>
    <main class="my_page_head my_page_section">
        <div class="my_profile">
            <div class="my_profile_img">
                <img src="data:image/jpeg;base64,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" alt="">
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
                <h2 class="recipe-list-title">나만의 레시피</h2>
                <a href="#" class="more-view">더보기</a>
            </div>
                <div class="recipe-list-wrapper">
                    <div class="recipe-list">
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" alt="">
                            <span class="recipe-list-item-title">전복 김치</span>        
                            <button class="recipe-list-item-button" location.href="/web//myrecipeList.do">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" alt="">
                            <span class="recipe-list-item-title">과일 겉절이</span>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" alt="">
                            <span class="recipe-list-item-title">누룽지 두부 계란밥</span>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" alt="">
                            <span class="recipe-list-item-title">호박타락</span>
                            <button class="recipe-list-item-button">보러가기</button> 
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" alt="">
                            <span class="recipe-list-item-title">약재 소스를 곁들인 닭가슴살롤</span>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" height="250" alt="">
                            <span class="recipe-list-item-title">롤 삼계탕</span>
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
                <h2 class="recipe-list-title">즐겨찾기</h2>
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