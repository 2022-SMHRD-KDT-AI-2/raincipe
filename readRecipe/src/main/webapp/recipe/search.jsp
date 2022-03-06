<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="readRecipe.model.UserDAO"%>
<%@ page import="readRecipe.model.UserVO"%>
<%@ page import="readRecipe.model.RecipeVO"%>
<%@ page import="readRecipe.model.RecipeDAO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">
			<table class="active table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #2e8b57; text-align: center;">번호</th>
						<th style="background-color: #2e8b57; text-align: center;">이름</th>
						<th style="background-color: #2e8b57; text-align: center;">내용</th>
					
					</tr>
				</thead>
				<tbody>
					<%
						RecipeDAO dao = new RecipeDAO();
						RecipeVO re = new RecipeVO();
						ArrayList<RecipeVO> list = dao.getSearch(request.getParameter("searchField"),
								request.getParameter("searchText"));
						if (list.size() == 0) {
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("alert('검색결과가 없습니다.')");
							script.println("history.back()");
							script.println("</script>");
						}
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
				
						<%--현재 게시글에 대한 정보 --%>
					
						<td><%=list.get(i).getRecipe_seq()%></td>
						<td><%=list.get(i).getRecipe_name()%></td>
						<td><%=list.get(i).getRecipe_step()%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			
</body>
</html>