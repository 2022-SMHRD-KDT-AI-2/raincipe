<%@page import="readRecipe.model.RecipeVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>    
 <% 
 	RecipeVO vo=(RecipeVO)request.getAttribute("vo");
 	String steps = vo.getRecipe_step();
 %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
	function goList() {
		location.href="/web//recipeList.do"	
	}
  </script>
</head>
<body> 
<div class="container">
  <h2> 레시피 </h2>
  <div class="panel panel-default">
    <div class="panel-heading">TEST</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
 			<tr>
 				<td>요리 이름</td>
 				<td><%= vo.getRecipe_name() %></td>
 			</tr>
 			<tr>
 				<td>스텝</td>
 				<td id ='step'></td>
 			</tr>
 			<tr>
 				<td colspan="2" align="center" id ='buttonTd'>
 				   <Button class = "btn btn-success btn-sm" id = 'pre'>이전</Button>
 				   <Button class = "btn btn-success btn-sm" id = 're'>다시 재생</Button>
 				   <Button class = "btn btn-success btn-sm" id = 'next'>다음</Button>
 				</td>
 			</tr>
 		</table>
    </div>
    <div class="panel-footer"></div>
  </div>
</div>
<script>
	var step_str = "<%=steps %>";
	let step_list = step_str.split(';');
	let cnt = 0;
	let time = 0;
	var alarm = new Audio('alarm.mp3')
	if (step_list[step_list.length-1]==""){
		step_list = step_list.slice(0,-1);
	}
	// 음성 파일 생성하기
	$.ajax({
		url : "http://221.156.243.131:3600/post",
		type : "post",
		sucess : function(res){
			continue
		},
		error : function() {alert("error");}
	})	
    $(function(){
    	$('#step').html(step_list[cnt])
    	while (cnt < step_list.length){
    		// 보이스 저장하기
			$.ajax({
				url : "http://221.156.243.131:3600/post",
				type : "post",
				success : function(res){ // res : 응답받은값을 자동으로 받아주는 매개변수
					continue
				},
				error : function() {alert("error");}
			});
    		// 이전 이라면 전 스텝 보여주기
    		if(cnt>0 && voice == "이전"){
    			time = 0;
                $('#step').html(step_list[cnt]);
                // 보이스 재생
    		} else if (cnt<(step.list_length-1)&& voice == "다음"){
    			cnt += 1;
                $('#step').html(step_list[cnt]);
                // 보이스 재생
    		} else if (cnt<(step.list_length-1)&& voice == "다시 재생"){
                $('#step').html(step_list[cnt]);
                // 보이스 재생
    		} else if(!!voice.match(/[^0-9]/)){
    			time = parseint(voice);
    			// 자바스크립트 타이머 설정 후 알람 재생
    			setTimeout(alarm.play(),time)
    		}
    	}
    })
</script>
</body>
</html>