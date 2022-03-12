package readRecipe.model;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class UserDAO  {
	
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
	
	public int userInsert(UserVO vo) {
		SqlSession session = sqlSessionFactory.openSession();
		int result = session.insert("signUp", vo);
        session.commit();
		session.close();
		return result;
	}

	public void deleteUser(String user_id) {
		SqlSession session = sqlSessionFactory.openSession();
		session.delete("deleteUser", user_id);
		session.commit();
		session.close();
	}


}