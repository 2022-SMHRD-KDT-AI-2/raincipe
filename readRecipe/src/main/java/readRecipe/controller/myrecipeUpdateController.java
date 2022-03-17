package readRecipe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.my_recipeDAO;
import readRecipe.model.my_recipeVO;

@WebServlet("/myrecipeUpdate.do")
public class myrecipeUpdateController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		int my_recipe_seq = Integer.parseInt(request.getParameter("my_recipe_seq"));
		String my_recipe_name = request.getParameter("my_recipe_name");
		String my_recipe_ingredient = request.getParameter("my_recipe_ingredient");
		String my_recipe_step = request.getParameter("my_recipe_step");
		
		my_recipeDAO dao = new my_recipeDAO();
		my_recipeVO vo = new my_recipeVO();
		
		vo.setMy_recipe_seq(my_recipe_seq);
		vo.setMy_recipe_name(my_recipe_name);	
		vo.setMy_recipe_ingredient(my_recipe_ingredient);
		vo.setMy_recipe_step(my_recipe_step);
		
		dao.my_recipe_update(vo);
		
		response.sendRedirect("/readRecipe/myrecipeList.do");
	}
}