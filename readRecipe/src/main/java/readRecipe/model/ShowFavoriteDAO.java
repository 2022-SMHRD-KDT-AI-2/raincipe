package readRecipe.model;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class ShowFavoriteDAO {


	private static final List<RecipeVO> New = null;
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
	

	public List<RecipeVO> showfavorite(String user_id) {
		SqlSession session=sqlSessionFactory.openSession();                                 
		List<RecipeVO> favorite =session.selectList("showfavorite", user_id);
		session.commit();
		session.close();
		return favorite;
	}
	public List<RecipeVO> showmyfavorite(String user_id) {
		SqlSession session=sqlSessionFactory.openSession();                       
		List<RecipeVO> myfavorite =session.selectList("showmyfavorite", user_id);
		session.commit();
		session.close();
		return myfavorite;
	}


}

	





		

	

