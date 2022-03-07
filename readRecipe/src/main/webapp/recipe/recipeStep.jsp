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
    <div class="panel-heading">BOARD</div>
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
    <div class="panel-footer">인공지능 융합서비스 개발자 과정(정현호)</div>
  </div>
</div>
<script>
	var step_str = "<%=steps %>"
	let step_list = step_str.split(';')
	cnt = 0
	if (step_list[step_list.length-1]==""){
		step_list = step_list.slice(0,-1)
	}
    $(function(){
    	$('#step').html(step_list[cnt])
        $('#pre').click(function(){
            cnt -= 1
            $('#step').html(step_list[cnt])
        })
        $('#re').click(function(){
            $('#step').html(step_list[cnt])
        })
        $('#next').click(function(){
            cnt += 1
            $('#step').html(step_list[cnt])
        })
    })
</script>
</body>
</html>