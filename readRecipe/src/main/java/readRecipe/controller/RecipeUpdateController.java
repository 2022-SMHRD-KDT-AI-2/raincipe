package readRecipe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.my_recipeVO;
import readRecipe.model.my_recipeDAO;


@WebServlet("/recipeUpdate.do")
public class RecipeUpdateController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		int recipe_seq = Integer.parseInt(request.getParameter("recipe_seq"));
		String my_recipe_name = request.getParameter("my_recipe_name");
		String my_recipe_ingredient = request.getParameter("my_recipe_ingredient");
		String my_recipe_step = request.getParameter("my_recipe_step");
		String user_id = request.getParameter("user_id");
		String channel_id = request.getParameter("channel_id");
		
		my_recipeDAO dao = new my_recipeDAO();
		my_recipeVO vo = new my_recipeVO();
		
		vo.setRecipe_seq(recipe_seq);
		vo.setMy_recipe_name(my_recipe_name);	
		vo.setMy_recipe_ingredient(my_recipe_ingredient);
		System.out.println(my_recipe_ingredient);
		vo.setMy_recipe_step(my_recipe_step);
		vo.setUser_id(user_id);
		System.out.println(user_id);
		vo.setChannel_id(channel_id);
		
		
		dao.my_recipe(vo);
		
		response.sendRedirect("/web/recipeList.do");
	}
}
