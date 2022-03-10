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
	private Connection conn; // Connection : �����ͺ��̽��� �����ϰ� ���ִ� �ϳ��� ��ü 

	
	private static SqlSessionFactory sqlSessionFactory;
	// �ʱ�ȭ��(���α׷� ����� �ѹ��� ����Ǵ� �κ�)
	static {
		try {
		String resource = "readRecipe/model/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	// Recipe table���� �Խ��� ��ü����Ʈ ��������
	public List<RecipeVO> selectAll() {
		SqlSession session=sqlSessionFactory.openSession();
		// SqlSession�� � ������ �˰� �־�� �ұ�?
		// 1. SQL������ ��� �ִ���
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
	
	public List<RecipeVO> getSearch(String searchText){//Ư���� ����Ʈ�� �޾Ƽ� ��ȯ
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
	            System.out.println("���Ἲ��");
	         }
	         
	      }catch (Exception e) {
	         e.printStackTrace();
	      }
	   }


}