package readRecipe.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import readRecipe.model.RecipeVO;

public class my_recipeDAO {
	
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
	
	public void Personalrecipe(RecipeVO vo) {
		// SqlSession=Connection+Statement
		SqlSession session = sqlSessionFactory.openSession();
		session.update("Personalrecipe",vo);
		session.commit();
		session.close();
	}

	public int my_recipe(my_recipeVO vo) {
		SqlSession session=sqlSessionFactory.openSession();   
		int cnt = session.update("my_recipe", vo);
		session.commit();
		session.close();
		return cnt;
	}
	
	public void addCount(int my_recipe_seq) {
		SqlSession session = sqlSessionFactory.openSession();
		session.update("addCount",my_recipe_seq);
		session.commit();
		session.close();
	}

}
