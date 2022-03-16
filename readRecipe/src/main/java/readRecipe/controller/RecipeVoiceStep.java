package readRecipe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.RecipeDAO;
import readRecipe.model.RecipeVO;

/**
 * Servlet implementation class RecipeVoiceStep
 */
@WebServlet("/recipeVoice.do")
public class RecipeVoiceStep extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String before = request.getParameter("Recipe_seq");
		int recipe_seq = Integer.parseInt(before); 

		System.out.println("success");
		
		RecipeDAO dao = new RecipeDAO();
		RecipeVO vo = dao.getByRecipe_seq(recipe_seq);
		
	
		request.setAttribute("vo",vo);
		RequestDispatcher rd=request.getRequestDispatcher("recipe/recipeStepVoice.jsp");
		rd.forward(request, response);
	}

}
