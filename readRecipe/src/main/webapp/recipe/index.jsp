<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
  <script type="text/javascript">
     function goSearch(searchText) {
      location.href="/web//search.do?searchText="+searchText;
   }
  </script>
<body>
 
<div class="container">
  <h2>메인화면</h2>

 <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
    	<a href="/web/recipeList.do">게시판리스트</a>
    </div>
    <div class="panel-footer">인공지능 융합서비스 개발자 과정(정현호)</div>
  </div>

<div class="col-lg-4"></div>
      <div class="col-lg-4">
         <div class="jumbotron" style="padding-top: 20px;">
            <form method="post" action="Login.jsp">
               <h3 style="text-align: center;">Welcome!</h3>
               <div class="form-group">
                  <input type="text" class="form-control" placeholder="user_id" name="user_id" maxlength="20">
               </div>
               <div class="form-group">
                  <input type="password" class="form-control" placeholder="user_pw" name="user_pw" maxlength="20">
               </div>
               <input type="submit" id = login class="btn btn-primary form-control" value="Login">
            </form>
         </div>
      </div>
   </div>
   <div class="container">
      <div class="row">
         <form method="post" name="search" action="/web/search.do">
            <table class="pull-right">
               <tr>
                  <td><input type="text" class="form-control"
                     placeholder="검색어 입력" name="searchText" maxlength="100"></td>
                  <td><button type="submit" class="btn btn-success">검색</button></td>
               </tr>
            </table>
         </form>
      </div>
   </div>

   
   
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>

</body>
</html>