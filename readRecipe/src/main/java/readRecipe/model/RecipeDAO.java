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
	private Connection conn; // Connection : 데이터베이스에 접근하게 해주는 하나의 객체 
	private PreparedStatement pstmt;
	private ResultSet rs; // ResultSet : 어떠한 정보를 담을 수 있는 객체 
	
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
	public ArrayList<RecipeVO> getSearch(String searchField, String searchText){//특정한 리스트를 받아서 반환
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
	          
	            list.add(re);//list에 해당 인스턴스를 담는다.
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;//
	   }


}