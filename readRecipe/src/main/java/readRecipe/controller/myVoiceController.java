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
 * Servlet implementation class myVoiceController
 */
@WebServlet("/myVoice.do")
public class myVoiceController extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String before = request.getParameter("my_recipe_seq");
		int my_recipe_seq = Integer.parseInt(before); 

		System.out.println("success");
		
		my_recipeDAO dao = new my_recipeDAO();
		my_recipeVO vo = dao.getMy_recipe_seq(my_recipe_seq);
		
	
		request.setAttribute("vo",vo);
		RequestDispatcher rd=request.getRequestDispatcher("recipe/myStepVoice.jsp");
		rd.forward(request, response);
	}

}
