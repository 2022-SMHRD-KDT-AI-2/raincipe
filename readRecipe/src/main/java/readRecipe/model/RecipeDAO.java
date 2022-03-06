package readRecipe.model;	

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import readRecipe.model.RecipeVO;

public class RecipeDAO{
	private Connection conn; // Connection : �����ͺ��̽��� �����ϰ� ���ִ� �ϳ��� ��ü 
	private PreparedStatement pstmt;
	private ResultSet rs; // ResultSet : ��� ������ ���� �� �ִ� ��ü 
	
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
	   
	public void addCount(int idv) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("addCount",idv);
		session.commit();
		session.close();
	}

	public RecipeVO getByRecipe_seq(int recipe_seq) {
		SqlSession session=sqlSessionFactory.openSession();
		RecipeVO vo = session.selectOne("getByRecipe_seq",recipe_seq);
		session.close();
		return vo;
	}
	public ArrayList<RecipeVO> getSearch(String searchField, String searchText){//Ư���� ����Ʈ�� �޾Ƽ� ��ȯ
	      ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
	      String SQL ="select * from RecipeVO WHERE "+searchField.trim();
	      try {
	            if(searchText != null && !searchText.equals("") ){ 
	                SQL +=" LIKE '%"+searchText.trim()+"%' order by recipe_name desc limit 10";
	            }
	            PreparedStatement pstmt=conn.prepareStatement(SQL);
				rs=pstmt.executeQuery();//select
	         while(rs.next()) {
	        	 RecipeVO re = new RecipeVO();
	            re.setRecipe_seq((rs.getInt(1)));
	            re.setRecipe_name(rs.getString(2));
	            re.setRecipe_ingredient(rs.getString(3)); 
	            re.setRecipe_step(rs.getString(4)); 
	            re.setRecipe_img1(rs.getString(5)); 
	          
	            list.add(re);//list�� �ش� �ν��Ͻ��� ��´�.
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;//
	   }


}