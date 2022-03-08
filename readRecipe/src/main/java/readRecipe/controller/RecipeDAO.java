package readRecipe.controller;	

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

import readRecipe.model.UserVO;
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
	
	public UserVO checkLogin(UserVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		UserVO usVO = session.selectOne("checkLogin", vo);
		session.close();
		return usVO;
	}
	


}