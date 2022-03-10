<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="./cssFolder/ex01.css">
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
        <img src="./cssFolder/img/꾸미기.png" alt="" class="header">
        <!-- 메인섹션 -->
        <div class="mainSection">
            <!-- 로고 부분 -->
            <div class="logoContainer">
                <img src="./cssFolder/img/facebook_cover_photo_1.png" alt="">
            </div>
            
         
		 <div>
		 	<c:if test="${empty usVO}">
		 		<form method="post" name="login" action="recipe/Login.jsp">
		 			<button type="submit" class="btn btn-success">로그인</button>
		 		</form>
		 	</c:if>
		 	<c:if test="${!empty usVO}">
				<div>
					<label>${usVO.user_nick}님 방문을 환영합니다.</label>
					<button class="btn btn-info btn-sm" onclick="goOut()">로그아웃</button>
				</div>
			</c:if>
		 </div>
            <!-- 검색부분 -->
         <form method="post" name="search" action="/web/search.do">
            <div class="searchContainer">
                <div class="searchBox">    
                    <img src="https://cdn-icons.flaticon.com/png/512/5177/premium/5177416.png?token=exp=1646392208~hmac=1db8b20b6104848483e07829b6f56547" alt="">
                    <input type="text" class="form-control" placeholder="검색어 입력" name="searchText" maxlength="100">
                    <button type="submit" class="btn btn-success">검색</button>
                </div>
            </div>
         </form> 
        </div>
    </div>
  </div>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<a href="/web/recipeList.do">게시판리스트</a>
    </div>
    <div class="panel-footer">레인시피</div>
  </div>

   
   
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>

</body>
</html>