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
import readRecipe.model.RecipeVO;
import readRecipe.model.ShowFavoriteDAO;
import readRecipe.model.UserVO;
import readRecipe.model.my_recipeVO;

@WebServlet("/showfavorite.do")
public class ShowFavoriteController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		UserVO user =(UserVO) session.getAttribute("usVO");
		String usid=user.getUser_id();
		
		
		ShowFavoriteDAO dao = new ShowFavoriteDAO();
		List<RecipeVO> ad = dao.showfavorite(usid); // 공공레시피
		List<my_recipeVO> bd = dao.showmyfavorite(usid);
		request.setAttribute("ad", ad);
		request.setAttribute("bd", bd);
		RequestDispatcher rdd=request.getRequestDispatcher("recipe/showfavorite.jsp");
		rdd.forward(request, response);
		
}
}
