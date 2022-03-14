package readRecipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import readRecipe.model.FavoriteDAO;
import readRecipe.model.FavoriteVO;
import readRecipe.model.UserVO;

@WebServlet("/myfavorite.do")
public class MyFavoriteController extends HttpServlet {
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int my_recipe_seq = Integer.parseInt(request.getParameter("my_recipe_seq")); 
	HttpSession session=request.getSession();
	UserVO user =(UserVO) session.getAttribute("usVO");
	String usid=user.getUser_id();

	FavoriteDAO dao = new FavoriteDAO();
	FavoriteVO vo = new FavoriteVO();	
	vo.setMy_recipe_seq(my_recipe_seq);
	vo.setUser_id(usid);
	dao.myfavorite(vo);
	//RequestDispatcher rd=request.getRequestDispatcher("recipe/favorite.jsp");
	//rd.forward(request, response);
	response.sendRedirect("/web/index.jsp");
}
}