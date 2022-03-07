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
	   public ArrayList<RecipeVO> getSearch(String searchField, String searchText){//특정한 리스트를 받아서 반환
	         ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
//	         String SQL ="select * from RecipeVO WHERE "+searchField.trim();
	         try {
	               System.out.println("getSearch 메소드 실행");
//	               if(searchText != null && !searchText.equals("") ){ 
//	                   SQL +=" LIKE '%"+searchText.trim()+"%' order by recipe_name desc limit 10";
//	               }
	               
	               //DB연결 준비
	               Class.forName("oracle.jdbc.driver.OracleDriver");
	            //DB정보
	            String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
	            String dbid = "cgi_5_0216_5";
	            String dbpw = "smhrd5";
	            //DB연결
	            conn = DriverManager.getConnection(url, dbid, dbpw);
	            
	            if(conn != null) {
	               System.out.println("연결성공");
	            }else {
	               System.out.println("db연결 실패");
	            }
	            
	            //SQL문 준비
	            String SQL = "";
	            if(searchText != null && searchField.equals("recipe_name") ){ 
	                   SQL = "select * from T_RECIPE WHERE recipe_name LIKE '%' || ? || '%'";
	               }else {
	                  SQL = "select * from RecipeVO WHERE userID";
	               }
	            //SQL준비해서 pstmt에 담아진 상태
	            
	               PreparedStatement pstmt=conn.prepareStatement(SQL);
	               
	               if(searchText != null && !searchText.equals("") ){
	                  //sql문에 원하는 변수 담아주기 위해서 ?->바인드변수
	                  //?자리에 setString해서 넣어줌
	                  System.out.println("1");
	                  pstmt.setString(1, searchText);
	                  
	                  
	               }
	               
	               System.out.println(SQL);
	               
	               //rs객체로 반환
	               //executeUpdate() -> update, insert, delete문 ---> int형으로 반환
	               //                                       (실행된 row갯수)
	            rs=pstmt.executeQuery();//select
	            
	            while(rs.next()) {
	               RecipeVO re = new RecipeVO();
	               re.setRecipe_seq((rs.getInt(1)));
	               re.setRecipe_name(rs.getString(2));
	               re.setRecipe_ingredient(rs.getString(3)); 
	               re.setRecipe_step(rs.getString(4)); 
	               re.setRecipe_img1(rs.getString(5)); 
	               re.setRecipe_type(rs.getString(7)); 
	               
	               
	             
	               list.add(re);//list에 해당 인스턴스를 담는다.
	            }         
	         } catch(Exception e) {
	            e.printStackTrace();
	         }finally {
	            try {
	            if(rs != null) rs.close();
	            if(pstmt != null) pstmt.close();
	            if(conn != null) conn.close();
	         } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	         }
	         return list;//
	      }
	


}