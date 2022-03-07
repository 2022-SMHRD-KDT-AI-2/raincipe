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
	   public ArrayList<RecipeVO> getSearch(String searchField, String searchText){//Ư���� ����Ʈ�� �޾Ƽ� ��ȯ
	         ArrayList<RecipeVO> list = new ArrayList<RecipeVO>();
//	         String SQL ="select * from RecipeVO WHERE "+searchField.trim();
	         try {
	               System.out.println("getSearch �޼ҵ� ����");
//	               if(searchText != null && !searchText.equals("") ){ 
//	                   SQL +=" LIKE '%"+searchText.trim()+"%' order by recipe_name desc limit 10";
//	               }
	               
	               //DB���� �غ�
	               Class.forName("oracle.jdbc.driver.OracleDriver");
	            //DB����
	            String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
	            String dbid = "cgi_5_0216_5";
	            String dbpw = "smhrd5";
	            //DB����
	            conn = DriverManager.getConnection(url, dbid, dbpw);
	            
	            if(conn != null) {
	               System.out.println("���Ἲ��");
	            }else {
	               System.out.println("db���� ����");
	            }
	            
	            //SQL�� �غ�
	            String SQL = "";
	            if(searchText != null && searchField.equals("recipe_name") ){ 
	                   SQL = "select * from T_RECIPE WHERE recipe_name LIKE '%' || ? || '%'";
	               }else {
	                  SQL = "select * from RecipeVO WHERE userID";
	               }
	            //SQL�غ��ؼ� pstmt�� ����� ����
	            
	               PreparedStatement pstmt=conn.prepareStatement(SQL);
	               
	               if(searchText != null && !searchText.equals("") ){
	                  //sql���� ���ϴ� ���� ����ֱ� ���ؼ� ?->���ε庯��
	                  //?�ڸ��� setString�ؼ� �־���
	                  System.out.println("1");
	                  pstmt.setString(1, searchText);
	                  
	                  
	               }
	               
	               System.out.println(SQL);
	               
	               //rs��ü�� ��ȯ
	               //executeUpdate() -> update, insert, delete�� ---> int������ ��ȯ
	               //                                       (����� row����)
	            rs=pstmt.executeQuery();//select
	            
	            while(rs.next()) {
	               RecipeVO re = new RecipeVO();
	               re.setRecipe_seq((rs.getInt(1)));
	               re.setRecipe_name(rs.getString(2));
	               re.setRecipe_ingredient(rs.getString(3)); 
	               re.setRecipe_step(rs.getString(4)); 
	               re.setRecipe_img1(rs.getString(5)); 
	               re.setRecipe_type(rs.getString(7)); 
	               
	               
	             
	               list.add(re);//list�� �ش� �ν��Ͻ��� ��´�.
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