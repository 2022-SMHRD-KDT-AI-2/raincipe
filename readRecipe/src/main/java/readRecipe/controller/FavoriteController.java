package readRecipe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.RecipeDAO;
import readRecipe.model.RecipeVO;
import readRecipe.model.UserDAO;

/**
 * Servlet implementation class FavoriteController
 */
@WebServlet("/favorite.do")
public class FavoriteController extends HttpServlet {
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int favorite = Integer.parseInt(request.getParameter("favorite")); 

	
	
	RecipeDAO dao = new RecipeDAO();
	RecipeVO vo = dao.getByRecipe_seq(favorite);
	

	request.setAttribute("vo",vo);
	RequestDispatcher rd=request.getRequestDispatcher("recipe/favorite.jsp");
	rd.forward(request, response);
}
}


