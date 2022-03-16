<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/main2.css">

</head>
<script type="text/javascript">
	function goOut() {
		location.href = "/web/logout.do";
	}
	function goFa(Recipe_seq) {
		location.href = "/web//favorite.do?Recipe_seq=" + Recipe_seq;
	}
</script>
<body>
	<div class="container">
		<!-- 웹페이지를 감싸는  -->
		<div class="wrapper indexPage">
			<img src="<%=request.getContextPath()%>/img/꾸미기.png" alt=""
				class="header">
			<c:if test="${empty usVO}">
				<form method="post" name="login" action="recipe/Login.jsp">
					<a href="recipe/Login.jsp"><img
						src="<%=request.getContextPath()%>/img/menu.png" alt=""
						class="bar"></a>
				</form>
			</c:if>
			<c:if test="${!empty usVO}">
				<div>
					<form method="post" action="/web/profilePage.do">
						<a href="/web/profilePage.do?user_id=${usVO.user_id}"><img
							src="<%=request.getContextPath()%>/img/menu.png" alt=""
							class="bar"></a>
					</form>
				</div>
			</c:if>
			<!-- 메인섹션 -->
			<div class="mainSection">
				<div class="logoContainer">
					<img src="<%=request.getContextPath()%>/img/logo.jpg">
				</div>
				<!-- 검색부분 -->
				<form method="post" name="search" action="/web/search.do">
					<div class="searchContainer">

						<div class="searchBox">
							<button type="submit" class="searchbutton">
								<img src="<%=request.getContextPath()%>/img/search.png" alt="">
							</button>
							<input type="text" name="searchText" id="searchBox" placeholder="검색어를 입력하세요">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="voice_img">
			<a href="#"> 
			<img src="<%=request.getContextPath()%>/img/voice-search.png" onclick="play()" alt="">
			<audio src="<%=request.getContextPath()%>/sound/SearchQ.mp3" id="searchQ"></audio>
			</a>
		</div>

		<script>	
		let control = ""
		
		const audio_q = document.getElementById("searchQ")
		
		audio_q.onended = function(){
			console.log("strat")
			$.ajax({
				url : 'http://221.156.243.131:3600/voiceSearch',
				type : 'post',
			success : function(res){
				control = res
			},
			error : setTimeout(function(){console('finish');},120000)
			}).then(control => {
                document.getElementById('searchBox').value = control
            })
		}
		
		function play() {
			audio_q.play()
		}
		</script>
	</div>
</body>
</html>