package readRecipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.my_recipeDAO;


@WebServlet("/myrecipeDelete.do")
public class myrecipedeleteController extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int my_recipe_seq=Integer.parseInt(request.getParameter("my_recipe_seq")); // "20" -> 20)
		
		my_recipeDAO dao = new my_recipeDAO();
		
		dao.myrecipeDelete(my_recipe_seq); // 성공 -> 다시 리스트 페이지로 응답을 돌리기
	
		response.sendRedirect("/readRecipe/myrecipeList.do");
	}
}
