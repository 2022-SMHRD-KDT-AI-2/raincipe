<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<%@ page isELIgnored="false" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>���������� ����</title>
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
        <img src="../img/�ٹ̱�.png" alt="" class="header">
        <a href="#"><img src="../img/left arrow.png" alt="" class="prev"></a>
        <main class="re_my_page_head re_my_page_section">
            <div class="re_my_profile">
                <div class="re_my_profile_img">
                    <img src="https://blog.kakaocdn.net/dn/dJRe0g/btqWUruqSFN/7lQyAEpK4ZnmBoHrU5lTAk/img.png" alt="">
                    <a href="#" class="re_my_profile_change">�����ʻ��� ����</a>
                </div>
            </div>
            <div class="re_my_nick">
                <div id="re_my_nick_name">
                    <span>����� ������</span>
                </div>
                <div id="re_my_introduction">
                    <textarea>�ƹ��ɷ� ����� ������ �� �ձ濡 �ູ�� ������ ������ �귯 �ǵ��ƿ��� �� ���� ���� �Ǿ������״� �������</textarea>
                </div>
            </div>
        </main>
    </div>

    <div class="my_information">
        <div class="my_info_section">
            <p class="my_info_title">���� ����</p>
                <div class="my_id">
                    <div><p class="my_info">���̵�</p></div>
                    <div><p>������� ���̵�</p></div>
                    <div></div>
                </div>
            

            
                <div class="my_pw">
                    <div><p class="my_info">��й�ȣ</p></div>
                    <div><p>*********</p></div>
                    <div class="re_info"><button class="btn">��й�ȣ ����</button></div>
                </div>
            

            
                <div class="my_name">
                    <div><p class="my_info">�̸�</p></div>
                    <div><p>������� �̸�</p></div>
                    <div></div>
                </div>
            

            
                <div class="my_email">
                    <div><p class="my_info">�̸���</p></div>
                    <div><p>*********</p></div>
                    <div class="re_info"><button class="btn">�̸��� ����</button></div>
                </div>
            
        </div>
      
        
        <button type="submit">
            ����Ϸ�
        </button>
    </div>

    <div class="withdrawal">
        <h4>ȸ�� Ż��</h4>
        <p>Ż�� �Ͻø� �������� ���� �Ҹ��� �� ������ �����ϰ� ������ �ּ���.</p>
       
       
       <form action="/web/deleteUser.do" method="post">
        	<input type="hidden" name="user_id" value="${usVO.user_id}">
        	<button type="submit" class="btn" onclick="DelUser()">
            	Ż��
        	</button>
        </form>
        	

  
    </div>
</body>

</html>