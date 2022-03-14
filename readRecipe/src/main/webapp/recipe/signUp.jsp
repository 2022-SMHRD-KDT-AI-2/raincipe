<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="<%= request.getContextPath() %>/css/sign.css">
</head>
<body>
    <!-- header -->
    <div id="header">
        <img src="<%= request.getContextPath() %>/img/logo.jpg" id="logo">
    </div>
    <!-- wrapper -->
    <div id="wrapper">
        <!-- content-->
        <form action="/web/signUp.do" name="signIn" method="post">
        <div id="content">
            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="user_id">ID</label>
                </h3>
                <div class="join_id">
                <span class="box int_id">
                    <input type="text" name="user_id" class="int" maxlength="20" placeholder="아이디 입력">
                    <img src="<%= request.getContextPath() %>/img/id.png" id="id1_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
                <span>
                    <button class="id_check">중복확인</button>
                </span>
                </div>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="user_pw">PASSWORD</label></h3>
                <span class="box int_pass">
                    <input type="password" name="user_pw" id="user_pw" class="int" maxlength="20" placeholder="비밀번호 입력">
                    <span id="alertTxt">사용불가</span>
                    <img src="<%= request.getContextPath() %>/img/pw.png" id="pswd1_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>


            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="user_name">Name</label></h3>
                <span class="box int_name">
                    <input type="text" name ="user_name" id="user_name" class="int" maxlength="20" placeholder="이름 입력">
                    <img src="<%= request.getContextPath() %>/img/name.png" id="pswd2_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- NICKNAME -->
            <div>
                <h3 class="join_title"><label for="user_nick">Nickname</label></h3>
                <span class="box int_nickname">
                    <input type="tel" name="user_nick" id="user_nick" class="int" maxlength="16" placeholder="닉네임 입력">
                    <img src="<%= request.getContextPath() %>/img/name.png" id="pswd2_img1" class="Img">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="user_email">E-mail<span class="optional">(선택)</span></label></h3>
                <span class="box int_email">
                    <input type="text" name="user_email" id="user_email"class="int"  maxlength="100" placeholder="선택입력">
                    <img src="<%= request.getContextPath() %>/img/id.png" id="id1_img1" class="Img">
                </span>
                <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
            </div>


            <!-- JOIN BTN-->
            <div class="btn_area">
                <button type="submit" id="btnJoin">
                    <span>회원가입</span>
                </button>
            </div>
            <div class="btn_area">
                <button type="button" id="btnJoincancel" onclick="location.href='/web/recipe/Login.jsp'">
                    <span>회원가입취소</span>
                </button>
            </div>
           </div>
           </form>
        <!-- content-->
    </div>
    <!-- wrapper -->
    <script src="main.js"></script>
</body>
</html>