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
		location.href="/web/deleteUser.do"	
	}
   </script>
</head>
<body>
    <div class="wrapper">
        <img src="../img/꾸미기.png" alt="" class="header">
        <a href="#"><img src="../img/left arrow.png" alt="" class="prev"></a>
        <main class="re_my_page_head re_my_page_section">
            <div class="re_my_profile">
                <div class="re_my_profile_img">
                    <img src="https://blog.kakaocdn.net/dn/dJRe0g/btqWUruqSFN/7lQyAEpK4ZnmBoHrU5lTAk/img.png" alt="">
                    <a href="#" class="re_my_profile_change">프로필사진 변경</a>
                </div>
            </div>
            <div class="re_my_nick">
                <div id="re_my_nick_name">
                    <span>행운을 빌어줘</span>
                </div>
                <div id="re_my_introduction">
                    <textarea>아무쪼록 행운을 빌어줘 내 앞길에 행복을 빌어줘 계절이 흘러 되돌아오면 더 나은 내가 되어있을테니 기대해줘</textarea>
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
      
        
        <button type="submit">
            변경완료
        </button>
    </div>

    <div class="withdrawal">
        <h4>회원 탈퇴</h4>
        <p>탈퇴를 하시면 정보들이 전부 소멸할 수 있으니 신중하게 진행해 주세요.</p>
       
       
       <form action="/web/deleteUser.do" method="post">
        	<input type="hidden" name="user_id" value="${usVO.user_id}">
        	<button type="submit" class="btn" onclick="DelUser()">
            	탈퇴
        	</button>
        </form>
        	

  
    </div>
</body>

</html>