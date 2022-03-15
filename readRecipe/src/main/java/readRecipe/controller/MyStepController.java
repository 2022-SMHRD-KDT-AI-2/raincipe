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

/**
 * Servlet implementation class StepController
 */
@WebServlet("/myrecipeStep.do")
public class MyStepController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int my_recipe_seq = Integer.parseInt(request.getParameter("my_recipe_seq")); 

		my_recipeDAO dao = new my_recipeDAO();
		my_recipeVO vo = dao.getMy_recipe_seq(my_recipe_seq);
		
	
		request.setAttribute("vo",vo);
		RequestDispatcher rd=request.getRequestDispatcher("recipe/MyrecipeStep.jsp");
		rd.forward(request, response);
		
	}

}
