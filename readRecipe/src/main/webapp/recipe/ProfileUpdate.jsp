<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<%@ page isELIgnored="false" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 수정</title>
    <link rel="stylesheet" href="../css/profileUpdate.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
   	function DelUser() {
		location.href="/readRecipe/deleteUser.do"	
	}
   	function Before() {
		history.back()	
	}
  	
   	
   </script>
</head>
<body>
    <div class="wrapper">
        <img src="../img/꾸미기.png" alt="" class="header">
        <a href="#"><img src="../img/left arrow.png" alt="" class="prev"  onclick="Before()"> ></a>
        <main class="re_my_page_head re_my_page_section">
            <div class="re_my_profile">
                <div class="re_my_profile_img">
                    <img src="data:image/jpeg;base64,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" alt="">   
                    <a href="#" class="re_my_profile_change">프로필사진 변경</a>
                </div>
            </div>
            <div class="re_my_nick">
                <div id="re_my_nick_name">
                    <span>${usVO.user_nick}</span>
                </div>
                <div id="re_my_introduction">
                    <textarea>${usVO.user_intro}</textarea>
                </div>
            </div>
        </main>
    </div>

    <div class="my_information">
        <div class="my_info_section">
            <p class="my_info_title">개인 정보</p>
                <div class="my_id">
                    <div><p class="my_info">아이디</p></div>
                    <div><p>사용자의 아이디</p></div>
                    <div></div>
                </div>
            

            
                <div class="my_pw">
                    <div><p class="my_info">비밀번호</p></div>
                    <div><p>*********</p></div>
                    <div class="re_info"><button class="btn">비밀번호 변경</button></div>
                </div>
            

            
                <div class="my_name">
                    <div><p class="my_info">이름</p></div>
                    <div><p>사용자의 이름</p></div>
                    <div></div>
                </div>
            

            
                <div class="my_email">
                    <div><p class="my_info">이메일</p></div>
                    <div><p>*********</p></div>
                    <div class="re_info"><button class="btn">이메일 변경</button></div>
                </div>
            
        </div>
      
        
        <button type="submit" onclick="Before()">
            변경완료
        </button>
    </div>

    <div class="withdrawal">
        <h4>회원 탈퇴</h4>
        <p>탈퇴를 하시면 정보들이 전부 소멸할 수 있으니 신중하게 진행해 주세요.</p>
       
       
       <form action="/readRecipe/deleteUser.do" method="post">
        	<input type="hidden" name="user_id" value="${usVO.user_id}">
        	<button type="submit" class="btn" onclick="DelUser()">
            	탈퇴
        	</button>
        </form>
        	

  
    </div>
</body>

</html>