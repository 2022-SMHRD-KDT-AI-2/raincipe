<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/login.css">
  <script type="text/javascript">
   	function goSign(){
  		location.href="/readRecipe/recipe/signUp.jsp";
  	}
  </script>
</head>
<body>
    <!-- header -->
    <div id="header">
        <img src="<%= request.getContextPath() %>/img/logo.jpg" id="logo">
    </div>
	    <!-- wrapper -->
    <div id="wrapper">

        <!-- content-->
        <div id="content">
			<form class="form-inline" action="/web/login.do" method="post">
            <!-- ID -->
            <div class="form-group">
                <h3 class="join_title">
                    <label for="user_id">Id</label>
                </h3>
                <span class="box int_id">
                	
                    <input type="text" id="id" class="int" maxlength="20" name="user_id" placeholder="아이디를 입력하세요">
                    <img src="<%= request.getContextPath() %>/img/id.png" id="id1_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW1 -->
            <div class="form-group">
                <h3 class="join_title"><label for="user_pw">Pw</label></h3>
                <span class="box int_pass">
                    <input type="password" id="pswd1" class="int" maxlength="20" name="user_pw" placeholder="비밀번호를 입력하세요">
                    <span id="alertTxt">사용불가</span>
                    <img src="<%= request.getContextPath() %>/img/pw.png" id="pswd1_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>
			
            <!-- JOIN BTN-->
            <div class="btn_area">  
                <button type="submit" id="btnlogin">
                    <span>로그인</span>
                </button>
            </div>
			</form>
			<form method="post" name="login" action="recipe/signUp.jsp">
            	<div class="btn_area">  
                	<button type="button" id="btnJoin" onclick="goSign()">
                    	<span>회원가입</span>
                	</button>
            </div>
            </form>
          </div>
      </div>

</body>
</html>