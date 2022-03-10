package readRecipe.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.RecipeDAO;
import readRecipe.model.UserVO;

/**
 * Servlet implementation class profileController
 */
@WebServlet("/profilePage.do")
public class profileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RecipeDAO dao = new RecipeDAO();
		String userID = request.getParameter("user_id");
		UserVO usVO = dao.userInfo(userID);
		
		request.setAttribute("usVO", usVO);
	    RequestDispatcher rd=request.getRequestDispatcher("recipe/profilePage.jsp");
	    rd.forward(request, response);
	}

}
