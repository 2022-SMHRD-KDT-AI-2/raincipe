package readRecipe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import readRecipe.model.UserVO;
import readRecipe.model.RecipeDAO;

@WebServlet("/login.do")
public class LoginController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
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
			
		}
		
		return "redirect:/recipeList.do";
	}
}
