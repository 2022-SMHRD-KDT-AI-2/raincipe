# 🍽 raincipe

음성 인식을 이용한 음식 레시피 리딩 서비스

# Description

코로나로 인한 외식규제와 코로나에 대한 두려움 때문에 지인들이나 친구들을 집에 초대해 요리를 하는 집밥 문화가 발달하였음 <br>
하지만 초보들이 동영상 레시피나 문자형 레시피를 읽는 과정에 부주의로 인한 사고가 증가함 <br>
이에 따라 사용자들이 음성 제어를 통해 자신의 템포의 맞춰 요리에 온전히 집중할 수 있는 환경을 제공함 <br>
구글 클라우드 플랫폼 STT/TTS API를 기반으로 개발.

# Technology Stack

## Server
- Tomcat
- Falsk

## MyBatis MVC

- Model : Java
- Controller : Servlet
- Viewer : JSP, Jquery, HTML, CSS, JS

## STT/TTS
- Python 환경을 기반으로 Recroding 및 입력단어 전처리 기능 구현
- 레시피 음성파일 생성 : Google Cloud Platform Text-To-Speech
- 레시피 음성제어 : Google Cloud Platform Speech-To-Text


# Web-Service structures

1. 웹서비스 상세페이지 음성 서비스 실행시 ajax 통신을 통해 레시피 리스트 Flask로 전송
2. Flask 환경에서 TTS 실행를 실행하여 레시피 음성파일 생성
3. 음성파일 생성 성공시 레시피 단계 페이지로 이동
4. 첫번째 음성 파일과 함께 "무엇을 도와드릴까요?" 라는 음성파일 재생을 통해 사용자에게 음성제어 신호를 보냄
5. 사용자는 다음,이전,다시 재생음성제어가 가능함
6. 또한 분단위나 초단위가 들어가는 음성을 말할시 자동으로 대기시간(알람)을 설정하며 해당 시간이 지나면 알람 재생
7. 종료 음성 제어시 음성제어 서비스가 종료됨

# Improtant Folder

```bash
main/srch
│
├── java/readRecipe
│   ├── model
│   └── Controller
└─── webapp
    ├── raincipe (View 폴더)
    ├── css
    ├── js
    └── sound (Flask 폴더)

``` 
