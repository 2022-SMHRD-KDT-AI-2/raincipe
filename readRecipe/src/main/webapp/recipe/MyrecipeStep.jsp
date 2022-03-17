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
<link rel="stylesheet" href="../css/commonrecipe.css">
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
		<img src="../img/꾸미기.png" id="logo"> <a href="#"><img
			src="../img/left arrow.png" alt="" class="prev" onclick = "goIndex()"></a>
	</div>
	<div id="wrapper">

		<div id="content">

			<div class="box1">
				<div id="title">
					<p><%=vo.getMy_recipe_name()%></p>
				</div>
				<div><span id = "step"></span></div>
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
		let step_list = step_str.split(';')
		cnt = 0
		if (step_list[step_list.length - 1] == "") {
			step_list = step_list.slice(0, -1)
		}
		$(function() {
			console.log(step_list[cnt])
			$('#step').html(step_list[cnt])
			$('#pre').click(function() {
				cnt -= 1
				$('#step').html(step_list[cnt])
			})
			$('#re').click(function() {
				$('#step').html(step_list[cnt])
			})
			$('#next').click(function() {
				cnt += 1
				$('#step').html(step_list[cnt])
			})
		})
	</script>
</body>
</html>