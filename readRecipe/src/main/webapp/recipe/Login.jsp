<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="stylesheet" href="../css/login.css">
</head>
<body>
	<form class="form-inline" action="/web/login.do" method="post">
		<div class="form-group">
			<label for="user_id">ID:</label> <input type="text"
				class="form-control" name="user_id">
		</div>
		<div class="form-group">
			<label for="user_pw">Password:</label> <input type="password"
				class="form-control" name="user_pw">
		</div>
		<button type="submit" class="btn btn-default">로그인</button>
	</form>
	
	
	
	
	<!-- header -->
    <div id="header">
        <img src="../img/logo.jpg" id="logo">
    </div>

	<form class="form-inline" action="/web/login.do" method="post">
	
	<div id="wrapper">

        <!-- content-->
        <div id="content">

            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">Id</label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20" placeholder="아이디를 입력하세요">
                    <img src="../img/id.png" id="id1_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">Pw</label></h3>
                <span class="box int_pass">
                    <input type="password" id="pswd1" class="int" maxlength="20" placeholder="비밀번호를 입력하세요">
                    <span id="alertTxt">사용불가</span>
                    <img src="../img/pw.png" id="pswd1_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>

	</form>


            <!-- JOIN BTN-->
            <div class="btn_area">  
                <button type="button" id="btnlogin">
                    <span><a href="">로그인</a></span>
                </button>
            </div>

            <div class="btn_area">  
                <button type="button" id="btnJoin">
                    <span><a href="회원가입.html">회원가입</a></span>
                </button>
            </div>

        </div>

	
	
	
	
	
	
</body>
</html>