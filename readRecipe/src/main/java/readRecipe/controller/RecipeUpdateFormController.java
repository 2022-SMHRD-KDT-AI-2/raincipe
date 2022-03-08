package readRecipe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.RecipeVO;
import readRecipe.model.RecipeDAO;

@WebServlet("/recipeUpdateForm.do")
public class RecipeUpdateFormController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int recipe_seq = Integer.parseInt(request.getParameter("Recipe_seq")); 
		RecipeDAO dao = new RecipeDAO();
		RecipeVO vo = dao.getByRecipe_seq(recipe_seq);	
		
		 request.setAttribute("vo", vo);
	     RequestDispatcher rd=request.getRequestDispatcher("recipe/recipeUpdate.jsp");
	     rd.forward(request, response);
	}
}