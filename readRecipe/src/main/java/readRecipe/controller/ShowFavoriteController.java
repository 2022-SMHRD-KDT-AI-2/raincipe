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

@WebServlet("/showfavorite.do")
public class ShowFavoriteController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session=request.getSession();
		UserVO user =(UserVO) session.getAttribute("usVO");
		String usid=user.getUser_id();
		
		
		ShowFavoriteDAO dao = new ShowFavoriteDAO();
		List<RecipeVO> ad = dao.showfavorite(usid);
		
//		System.out.println("adÃâ·Â>>"+ad);
//		List<RecipeVO> recipelist = dao.far(usid);
//		request.setAttribute("recipelist", recipelist);
//	
		request.setAttribute("ad", ad);
		RequestDispatcher rd=request.getRequestDispatcher("recipe/showfavorite.jsp");
		rd.forward(request, response);
		
		
}
}
