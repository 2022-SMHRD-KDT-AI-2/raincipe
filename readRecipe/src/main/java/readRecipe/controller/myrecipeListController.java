package readRecipe.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import readRecipe.model.my_recipeDAO;
import readRecipe.model.my_recipeVO;
/**
 * Servlet implementation class CalcController
 */
@WebServlet("/myrecipeList.do" )
public class myrecipeListController extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) 
		   throws ServletException, IOException {
	
  		my_recipeDAO dao = new my_recipeDAO();
  		List<my_recipeVO> list =dao.selectAll1();
	
     
      request.setAttribute("list", list);
      RequestDispatcher rd=request.getRequestDispatcher("recipe/myrecipeList.jsp");
      rd.forward(request, response);
      }

}