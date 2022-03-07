package readRecipe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.my_recipeDAO;
import readRecipe.model.my_recipeVO;
import readRecipe.model.RecipeVO;

/**
 * Servlet implementation class BoardUpdateController
 */
@WebServlet("/Personalrecipe.do")
public class PersonalrecipeController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// -> 파라미터수집(VO,DTO)
		request.setCharacterEncoding("utf-8");
		int recipe_seq = Integer.parseInt(request.getParameter("recipe_seq"));
		String recipe_name = request.getParameter("recipe_name");
		String recipe_step = request.getParameter("recipe_step");
		
		RecipeVO vo = new RecipeVO();
		vo.setRecipe_seq(recipe_seq);
		vo.setRecipe_name(recipe_name);
		vo.setRecipe_step(recipe_step);
		
		my_recipeDAO dao = new my_recipeDAO();
		dao.Personalrecipe(vo);
		response.sendRedirect("/web/boardList.do");
	}
}