package readRecipe.model;	

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import readRecipe.model.RecipeVO;

public class RecipeDAO{
	private Connection conn; // Connection : 데이터베이스에 접근하게 해주는 하나의 객체 

	
	private static SqlSessionFactory sqlSessionFactory;
	// 초기화블럭(프로그램 실행시 한번만 실행되는 부분)
	static {
		try {
		String resource = "readRecipe/model/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	// Recipe table에서 게시판 전체리스트 가져오기
	public List<RecipeVO> selectAll() {
		SqlSession session=sqlSessionFactory.openSession();
		// SqlSession은 어떤 정보를 알고 있어야 할까?
		// 1. SQL문장이 어디에 있는지
		List<RecipeVO> list=session.selectList("selectAll");
		session.close();
		return list;
	}

	public RecipeVO getByRecipe_seq(int recipe_seq) {
		SqlSession session=sqlSessionFactory.openSession();
		RecipeVO vo = session.selectOne("getByRecipe_seq",recipe_seq);
		session.close();
		return vo;
	}
	
	public UserVO checkLogin(UserVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		UserVO usVO = session.selectOne("checkLogin", vo);
		session.close();
		return usVO;
	}
	
	public UserVO userInfo(String user_id) {
		SqlSession session = sqlSessionFactory.openSession();
		UserVO usVO = session.selectOne("user_id", user_id);
		session.close();
		return usVO;
	}
	
	public List<RecipeVO> getSearch(String searchText){//특정한 리스트를 받아서 반환
			SqlSession session = sqlSessionFactory.openSession();
			List<RecipeVO> searched_list = session.selectList("selectRecipes",searchText);
			session.close();
	        return searched_list;
	        }	
	
	public void getdb() {
	      try {
	         Class.forName("oracle.jdbc.driver.OracleDriver");
	         
	         String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
	         String dbid = "cgi_5_0216_5";
	         String dbpw = "smhrd5";
	         
	         conn = DriverManager.getConnection(url, dbid, dbpw);
	         
	         if(conn != null) {
	            System.out.println("연결성공");
	         }
	         
	      }catch (Exception e) {
	         e.printStackTrace();
	      }
	   }


}