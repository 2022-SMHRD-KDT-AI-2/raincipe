package readRecipe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.RecipeVO;
import readRecipe.model.RecipeDAO;


@WebServlet("/recipeUpdate.do")
public class RecipeUpdateController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int recipe_seq = Integer.parseInt(request.getParameter("recipe_seq"));
		String recipe_name = request.getParameter("recipe_name");
		String recipe_ingredient = request.getParameter("recipe_ingredient");
		String recipe_step = request.getParameter("recipe_step");
		
		RecipeDAO dao = new RecipeDAO();
		RecipeVO vo = new RecipeVO();
		vo.setRecipe_seq(recipe_seq);
		vo.setRecipe_name(recipe_name);		
		vo.setRecipe_ingredient(recipe_ingredient);
		vo.setRecipe_step(recipe_step);
		
		dao.recipeUpdate(vo);
		
		response.sendRedirect("/web/recipeList.do");
	}
}
