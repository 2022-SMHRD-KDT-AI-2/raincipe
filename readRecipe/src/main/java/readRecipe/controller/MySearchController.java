package readRecipe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import readRecipe.model.my_recipeDAO;
import readRecipe.model.my_recipeVO;

@WebServlet("/mysearch.do")
public class MySearchController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		
		  my_recipeDAO myDao = new my_recipeDAO();
	      String searchMyText = request.getParameter("searchMyText");
	      System.out.println(searchMyText);
	      
	      List<my_recipeVO> myrecipeSearch = myDao.getMyrecipeSearch(searchMyText);
	      
	      request.setAttribute("myrecipeSearch", myrecipeSearch);
	      RequestDispatcher rd=request.getRequestDispatcher("recipe/mysearch.jsp");
	      rd.forward(request, response);
	}
}
