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
                            <img class="recipe-list-item-img" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTEyMjVfMTQ0%2FMDAxNjQwNDM0NDg0Nzg5.pXE6S81mWrPKi_8DxVFdxMdctD5EXGotC9TXbHrVSqsg.cVQ5-RA7tVPD8bXCHcu2Anw6f9vLpsQgoHePxLnyPDYg.PNG.th2dud%2Fdlsfjsldfj.PNG&type=sc960_832" alt="">
                            <span class="recipe-list-item-title">투움바</span>
                            <p class="recipe-list-item-desc">나혼자 산다 이주승 투움바</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://t1.daumcdn.net/cfile/tistory/99BFD1505D331A7406" alt="">
                            <span class="recipe-list-item-title">버섯크림리조또</span>
                            <p class="recipe-list-item-desc">놀라운 토요일 68화 크림리조또</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MDNfODAg%2FMDAxNjI1MzE4MDM0NzU2.TPuiQ5BIuGUFOzNaGVS_3-6Xjxz-HUg2t33Tlc8FANwg.n8w79Cj-UnB8JS8X4aMgBQEhZGnNwgQtrbbHocJERVIg.PNG.melayeonju%2F36%25C8%25B82%25B6%25F3%25BF%25EE%25B5%25E5%25C0%25BD%25BD%25C45.png&type=sc960_832" alt="">
                            <span class="recipe-list-item-title">닭갈비</span>
                            <p class="recipe-list-item-desc">놀라운 토요일 192화 닭갈비</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://i.ytimg.com/vi/KhKThbfYoMs/maxresdefault.jpg" alt="">
                            <span class="recipe-list-item-title">돈가스</span>
                            <p class="recipe-list-item-desc">백종원의 골목식당 돈가스</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA3MDNfODAg%2FMDAxNjI1MzE4MDM0NzU2.TPuiQ5BIuGUFOzNaGVS_3-6Xjxz-HUg2t33Tlc8FANwg.n8w79Cj-UnB8JS8X4aMgBQEhZGnNwgQtrbbHocJERVIg.PNG.melayeonju%2F36%25C8%25B82%25B6%25F3%25BF%25EE%25B5%25E5%25C0%25BD%25BD%25C45.png&type=sc960_832" alt="">
                            <span class="recipe-list-item-title">프렌치 토스트</span>
                            <p class="recipe-list-item-desc">백종원의 요리비책 프렌치 토스트</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-gb81qUOy_PHeAqTsePVQasJ9CoNJ_V_Efw&usqp=CAU" alt="">
                            <span class="recipe-list-item-title">관자버터구이</span>
                            <p class="recipe-list-item-desc">유명가수전 전복버터구이</p>
                            <button class="recipe-list-item-button">보러가기</button>
                        </div>
                        <div class="recipe-list-item">
                            <img class="recipe-list-item-img" src="data:image/jpeg;base64,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" alt="">
                            <span class="recipe-list-item-title">제육볶음</span>
                            <p class="recipe-list-item-desc">해치지않아 제육볶음</p>
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