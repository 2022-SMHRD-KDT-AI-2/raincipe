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
import readRecipe.model.my_recipeDAO;
import readRecipe.model.my_recipeVO;

/**
 * Servlet implementation class SearchController
 */
@WebServlet("/search.do")
public class SearchController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("utf-8");
		  RecipeDAO dao = new RecipeDAO();
		  my_recipeDAO myDao = new my_recipeDAO();
	      String searchText = request.getParameter("searchText");
	      List<RecipeVO> searchedList = dao.getSearch(searchText);
	      List<my_recipeVO> mySearchedList = myDao.getMySearch(searchText);
	      
	      // View와 연동(search.jsp) : (***객체바인딩+포워딩***)
	      request.setAttribute("searchedList", searchedList);
	      request.setAttribute("mySearchedList", mySearchedList);
	      RequestDispatcher rd=request.getRequestDispatcher("recipe/search.jsp");
	      rd.forward(request, response);
	}
}
