package readRecipe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import readRecipe.model.UserVO;
import readRecipe.model.my_recipeDAO;
import readRecipe.model.my_recipeVO;
import readRecipe.model.RecipeDAO;
import readRecipe.model.RecipeVO;
import readRecipe.model.ShowFavoriteDAO;


@WebServlet("/login.do")
public class LoginController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		
		RecipeDAO dao = new RecipeDAO();
		UserVO usVO = dao.checkLogin(vo);
		
		
		if(usVO != null) {
			HttpSession session=request.getSession();
			session.setAttribute("usVO", usVO);
			
			my_recipeDAO re_dao = new my_recipeDAO();
	  		List<my_recipeVO> list =re_dao.selectAll1();
	  		
	  		session.setAttribute("list", list);
	  		
	  		ShowFavoriteDAO dao2 = new ShowFavoriteDAO();
			List<RecipeVO> ad = dao2.showfavorite(user_id); 
			List<my_recipeVO> bd = dao2.showmyfavorite(user_id);
		
			session.setAttribute("ad", ad);
			session.setAttribute("bd", bd);
			
		}
		
		response.sendRedirect("/web/index.jsp");
	}
}
