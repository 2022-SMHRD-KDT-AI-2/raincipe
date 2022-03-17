package readRecipe.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import readRecipe.model.UserDAO;


@WebServlet("/deleteUser.do" )
public class DeleteUserController extends HttpServlet{
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=request.getParameter("user_id"); 
		System.out.println(user_id);
		
		UserDAO dao = new UserDAO();
		
		dao.deleteUser(user_id); 
		
		HttpSession session = request.getSession();
		session.invalidate(); 
	
		response.sendRedirect("/readRecipe/index.jsp");
	}
}
