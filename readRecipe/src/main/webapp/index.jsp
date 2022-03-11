<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
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
   	function goOut(){
  		location.href="/web/logout.do";
  	}
	function goFa(Recipe_seq){
  		location.href="/web//favorite.do?Recipe_seq="+Recipe_seq;
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
					<form method="post" action="/web/profilePage.do">
					<a href="/web/profilePage.do?user_id=${usVO.user_id}"><img src="<%= request.getContextPath() %>/img/menu.png" alt="" class="bar"></a>
					</form>
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
                            <img class="recipe-list-item-img" src="https://blog.kakaocdn.net/dn/5MKjU/btroVk1972a/g8ge7zZSWzsVWSWQNUf3s0/img.png" alt="">
                            <span class="recipe-list-item-title">닭볶음탕</span>
                            <p class="recipe-list-item-desc">나혼자 산다 이주승 닭볶음탕</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://blog.kakaocdn.net/dn/nGkn1/btroPW2sjKk/c9gB4iGEbuqq3daKH6uW71/img.png" alt="">
                            <span class="recipe-list-item-title">투움바</span>
                            <p class="recipe-list-item-desc">나혼자 산다 이주승 투움바</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fmblogthumb-phinf.pstatic.net%2FMjAyMjAyMDVfNTMg%2FMDAxNjQ0MDI3MTY4MTg1.l_ZW5eCEQZoYon-pAg-NjHtrTLiVulTKaV1BL1TQYrMg.xDMs-F3I6ytISxrFFwEfLe2u_8SnyF3eG2h7dOvfjDcg.JPEG.mijinkim80%2Fbatch_IMG_9237.JPEG%3Ftype%3Dw800&type=o372_180" alt="">
                            <span class="recipe-list-item-title">크림리조또</span>
                            <p class="recipe-list-item-desc">크림리조또</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fmblogthumb-phinf.pstatic.net%2FMjAyMjAxMTZfODEg%2FMDAxNjQyMjk4MDY0ODY1.zUgpnQuVeqajgUmtXEl3h1kPOFU35oC9x10WF1li0Xsg.wy4OK9bjiyvyfmhCZ1y97tDLS0xmL35P4wOsRECCJJEg.JPEG.baby0817%2FSpicy_grilled_chickengd09m636.jpg%3Ftype%3Dw800&type=o372_180" alt="">
                            <span class="recipe-list-item-title">닭갈비</span>
                            <p class="recipe-list-item-desc">닭갈비</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://i.ytimg.com/vi/KhKThbfYoMs/maxresdefault.jpg" alt="">
                            <span class="recipe-list-item-title">돈가스</span>
                            <p class="recipe-list-item-desc">백종원의 골목식당 돈가스</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://image.jtbcplus.kr/data/contents/jam_photo/202202/28/7df67b9e-d219-4b74-b52d-629d30adc32e.jpg" alt="">
                            <span class="recipe-list-item-title">프렌치 토스트</span>
                            <p class="recipe-list-item-desc">프렌치 토스트</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://search.pstatic.net/common/?src=https%3A%2F%2Fmblogthumb-phinf.pstatic.net%2FMjAyMjAyMTlfMjk4%2FMDAxNjQ1MjYzNzMyMzk5.3DSV9EF0Wc_CJU0Xhzs38bfYMw9JWYLUAm3FlVfm6zkg.p2no_StLQcMCCGKwv2DKy0pLfNM6JUXs-V8no_-8KeEg.JPEG.firehouse79%2FDSC07080.jpg%3Ftype%3Dw800&type=b220" alt="">
                            <span class="recipe-list-item-title">전복버터구이</span>
                            <p class="recipe-list-item-desc">전복버터구이</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://i.ytimg.com/vi/j7s9VRsrm9o/maxresdefault.jpg" alt="">
                            <span class="recipe-list-item-title">제육볶음</span>
                            <p class="recipe-list-item-desc">백종원의 요리비책 제육볶음</p>
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