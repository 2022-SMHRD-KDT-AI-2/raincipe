<%@page import="readRecipe.model.my_recipeVO"%>
<%@page import="readRecipe.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
 <% 
    my_recipeVO vo=(my_recipeVO)request.getAttribute("vo");
    String steps = vo.getMy_recipe_step();
 %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=request.getContextPath()%>/css/recipeclick.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
	function sleep(ms) {
		const wakeUpTime = Date.now() + ms;
	  	while (Date.now() < wakeUpTime) {}
	}

	function goList() {
 		 history.back();
	}
	
	function goVoice(stringStep,my_recipe_seq){
		$.ajax({
			url : 'http://221.156.243.131:3600/tts',
			type : 'post',
			data : {
				step : stringStep
			},
		success : function(res){
			sleep(1000*5)
			location.href="/web//myVoice.do?my_recipe_seq="+my_recipe_seq;
		},
		error : setTimeout(function(){console('finish')},120000)
		})
	}

   function goDel(my_recipe_seq){
      location.href="/web//myrecipeDelete.do?my_recipe_seq="+my_recipe_seq;
   }
   function goUpForm(my_recipe_seq){
      location.href="/web//myrecipeUpdateForm.do?my_recipe_seq="+my_recipe_seq;   
   }
   function gomyfavorite(my_recipe_seq){
      location.href="/web//myfavorite.do?my_recipe_seq="+my_recipe_seq;   
   }
   function goStep(my_recipe_seq){
        location.href="/web//myrecipeStep.do?my_recipe_seq="+my_recipe_seq;
     }
</script>
</head>
<body>

<div id="header">
        <img src="<%=request.getContextPath()%>/img/꾸미기.png" id="logo">
    </div>
    
    <div id="wrapper">

        <div id="content">

            <div class="box1_1">
                <div class="box1_int1">
                   <img src = "https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMDAzMThfNjUg%2FMDAxNTg0NDgxMTk5NTE5.tvfIV8zhWgXJAh4TL23XIysS7PujNPfyrfVMmszuRCQg.cqMblErFI-PVucXFIrYVQ2nfmhKypmSloHg338J7uc0g.JPEG.y0127k%2FIMG_7501.jpg&type=sc960_832" class=Img></img>
                        <Button id="start" class = "btn btn-success btn-sm" onclick="goStep(${vo.my_recipe_seq})">레시피 시작</Button>
                       <button id="voice_start" class = "btn btn-success btn-sm" onclick="goVoice('${vo.my_recipe_step}',${vo.my_recipe_seq})">음성 시작</button>
                            <c:if test="${!empty usVO}">
                         <Button id="bookmark" class = "btn btn-success btn-sm" onclick="goFa(${vo.my_recipe_seq})">즐겨찾기</Button>
                      </c:if>
                      <c:if test="${empty usVO}">
                         <Button id="bookmark" class = "btn btn-success btn-sm">즐겨찾기</Button>
                      </c:if>
                </div>
            </div>

            <div class="box2">
                <div>
                    <div id="box2_int3">${vo.my_recipe_name}</div>
                </div>
                <div>
                    <div id="box2_int1">${vo.my_recipe_ingredient}</div>
                </div>
                <div>
                    <div id="box2_int2"><br>${vo.my_recipe_step}</div>
                </div>
            </div>

           <div class="btn_area">
                <Button id="update_recipe" class = "btn btn-success btn-sm" onclick="goUp(${vo.recipe_seq})">나만의 레시피 저장</button>
                <Button id="list"  onclick="goList()">리스트</Button>
            </div>

        </div>

    </div>
  <script>
       var step_str = "<%=steps%>"
       let step_list = step_str.split(';')
       console.log(step_list)
       $(function(){
          for (const step of step_list){
             $('#box2_int2').append("<p>"+step+"</p><br>")
          }
       })
    </script>
</body>
</html>