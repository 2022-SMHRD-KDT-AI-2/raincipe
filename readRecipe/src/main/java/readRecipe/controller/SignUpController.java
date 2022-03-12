package readRecipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.UserDAO;
import readRecipe.model.UserVO;

@WebServlet("/signUp.do")
public class SignUpController extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// DAO 설정
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		String name = request.getParameter("user_name");
		String nick = request.getParameter("user_nick");
		String email = request.getParameter("user_email");
		
		vo.setUser_id(id);
		vo.setUser_pw(pw);
		vo.setUser_name(name);
		vo.setUser_nick(nick);
		vo.setUser_email(email);
		vo.setUser_profile_img("null");
		vo.setUser_intro("hi");
		int result = dao.userInsert(vo);
		
		if (result > 0){
			System.out.println("회원가입 성공!");
			response.sendRedirect("/web/recipe/Login.jsp");
		} else {
			System.out.println("회원가입 실패....");
		}
	}

}
