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

import readRecipe.model.RecipeDAO;
import readRecipe.model.RecipeVO;
/**
 * Servlet implementation class CalcController
 */
@WebServlet("/recipeList.do")
public class RecipeListController extends HttpServlet {
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      //Model�� ���� : BoardDAO(JDBC)
      RecipeDAO dao = new RecipeDAO();
      List<RecipeVO> list =dao.selectAll();
      
      // View�� ����(boardList.jsp) : (***��ü���ε�+������***)
      request.setAttribute("list", list);
      RequestDispatcher rd=request.getRequestDispatcher("recipe/recipeList.jsp");
      rd.forward(request, response);
      }

}