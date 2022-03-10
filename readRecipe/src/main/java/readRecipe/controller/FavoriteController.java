package readRecipe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import readRecipe.model.FavoriteVO;
import readRecipe.model.RecipeDAO;
import readRecipe.model.RecipeVO;
import readRecipe.model.UserVO;
import readRecipe.model.FavoriteDAO;

/**
 * Servlet implementation class FavoriteController
 */
@WebServlet("/favorite.do")
public class FavoriteController extends HttpServlet {
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int recipe_seq = Integer.parseInt(request.getParameter("Recipe_seq")); 
	HttpSession session=request.getSession();
	UserVO user =(UserVO) session.getAttribute("usVO");
	String usid=user.getUser_id();

	
	
	
	
	FavoriteDAO dao = new FavoriteDAO();
	FavoriteVO vo = new FavoriteVO();	
	vo.setFecipe_seq(recipe_seq);
	vo.setUser_id(usid);
	dao.favorite(vo);
	RequestDispatcher rd=request.getRequestDispatcher("recipe/recipeContent.jsp");
	rd.forward(request, response);
}
}


