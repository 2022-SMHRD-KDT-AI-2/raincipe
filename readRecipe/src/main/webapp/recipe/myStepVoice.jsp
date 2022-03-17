<%@page import="readRecipe.model.my_recipeVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
my_recipeVO vo = (my_recipeVO) request.getAttribute("vo");
String steps = vo.getMy_recipe_step();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/commonrecipe.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	function goIndex() {
		location.href="/readRecipe//index.jsp"	
	}
  </script>
</head>
<body>

	<div id="header">
		<img src="<%=request.getContextPath()%>/img/꾸미기.png" id="logo">
		<a href="#"><img
			src="<%=request.getContextPath()%>/img/left arrow.png" alt=""
			onclick="goIndex()
			class="prev"></a>
	</div>
	<div id="wrapper">

		<div id="content">

			<div class="box1">
				<div id="title">
					<p><%=vo.getMy_recipe_name()%></p>
				</div>
				<div>
					<span id="step"></span>
				</div>
				<div>
					<audio src="<%=request.getContextPath()%>/sound/Question.mp3"
						id="question"></audio>
				</div>
			</div>
			<div class="btn_area">
				<Button class="btn btn-success btn-sm" id='pre'>이전</Button>
				<Button class="btn btn-success btn-sm" id='next'>다음</Button>
			</div>

		</div>
	</div>
	<div class="panel-footer"></div>
	<script>	
		
		var step_str = "<%=steps%>"
		let control = ''
		let step_list = step_str.split(';')
		cnt = 0
		
		$('#step').html(step_list[cnt])
		
		const audio = new Audio()
		audio.src="../sound/"+ cnt +".mp3";

		
		if (step_list[step_list.length - 1] == "") {
			step_list = step_list.slice(0, -1)
		}
		
		// 타이머 만들기
		let time = 0
		function sleep(ms) {
			  const wakeUpTime = Date.now() + ms;
			  while (Date.now() < wakeUpTime) {}
		}
		
		// 행동 지침 안내 오디오 플레이 설정
		const audio_q = document.getElementById('question')
			
		// 행동 지침 안내 오디오가 끝날시 일반 오디오 실행 코드	
		audio_q.onended = function() {
			console.log("success")
				$.ajax({
					url : 'http://221.156.243.131:3600/stt',
					type : 'post',
				success : function(res){
					control = res
				},
				error : setTimeout(function(){console('finish');},120000)
			}).then(control => {
					if (control == '다음'){
						cnt += 1
						$('#step').html(step_list[cnt])
						audio.src="../sound/"+ cnt +".mp3";
						audio.play()
					} else if (control == '이전'){
						cnt -= 1
						$('#step').html(step_list[cnt])
						audio.src="../sound/"+ cnt +".mp3";
						audio.play()
					} else if (control == '다시'){
						audio.src="../sound/"+ cnt +".mp3";
						audio.play()
					} else if (control == '재녹음'){
						audio.src="../sound/replay.mp3";
						audio.play()
					} else if (control == '종료'){
					}else {
						time = parseInt(control)
						sleep(1000*time)
						audio.src="../sound/alarm.mp3";
						audio.play()
					}
				})
			};
			
			audio.addEventListener("ended", function(){
				console.log("strat")
				if (cnt<step_list.length){
					audio_q.play()
				} else{
					console('finish')
				}	
			});
			
			audio.play()
	</script>
</body>
</html>