package readRecipe.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import readRecipe.model.FavoriteVO;

public class FavoriteDAO {

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
	
	public int favorite(FavoriteVO vo) {
		SqlSession session=sqlSessionFactory.openSession();   
		int cnt=session.insert("favorite", vo);
		session.commit();
		session.close();
		return cnt;
	}
	
	
}
