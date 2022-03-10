<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/main.css">

</head>
  <script type="text/javascript">
     function goSearch(searchText) {
      location.href="/web//search.do?searchText="+searchText;
   }
   	function goOut(){
  		location.href="/web/logout.do";
  	}
  </script>
<body>
    <div class="container">
    <!-- 웹페이지를 감싸는  -->
		<div class="wrapper indexPage">
			<img src="<%= request.getContextPath() %>/img/꾸미기.png" alt="" class="header">
			<c:if test="${empty usVO}">
				<form method="post" name="login" action="recipe/Login.jsp">
					<a href="recipe/Login.jsp"><img src="<%= request.getContextPath() %>/img/menu.png" alt="" class="bar"></a>
				</form>
			</c:if>
			<c:if test="${!empty usVO}">
				<div>
					<label>${usVO.user_nick}님 방문을 환영합니다.</label>
					<button class="btn btn-info btn-sm" onclick="goOut()">로그아웃</button>
				</div>
			</c:if>
			<!-- 메인섹션 -->
			<div class="mainSection">
				<!-- 로고 부분 -->
				<div class="logoContainer">
					<img src="<%= request.getContextPath() %>/img/logo.jpg" alt="">
				</div>

				<!-- 검색부분 -->
				<form method="post" name="search" action="/web/search.do">
				<div class="searchContainer">
					<div class="searchBox">
						<button type="submit" class="searchbutton">
						<img src="<%= request.getContextPath() %>/img/search.png" alt=""></button>
						<input type="text" name="searchText" placeholder="검색어를 입력하세요">
					</div>
				</div>
				</form>
			</div>
		</div>

		<!-- 트렌드요리 -->

    <div class="content-container">
        <div class="recipe-list-container">
            <div class="recipe-title-section">
                <h2 class="recipe-list-title">트렌드 레시피</h2>
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
                <h2 class="recipe-list-title">HOT 레시피</h2>
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
                <h2 class="recipe-list-title">오늘의 기본 레시피</h2>
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
                <h2 class="recipe-list-title">오늘의 개인레시피</h2>
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
</div>

        
        <!— 더보기 버튼 —>
        <div class="more_view">
            <a href="#" class="btn">Click Here!</a>	
        </div>
<script src="<%= request.getContextPath() %>/js/main.js"></script>
<script src="https://kit.fontawesome.com/cef887cfcd.js" crossorigin="anonymous"></script> 

</body>
</html>