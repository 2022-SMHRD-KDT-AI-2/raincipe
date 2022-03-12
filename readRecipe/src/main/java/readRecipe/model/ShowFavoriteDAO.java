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

//
//	public List<RecipeVO> showlist(List<FavoriteVO> RECIPE_SEQ) {
//		SqlSession session=sqlSessionFactory.openSession();      
//		List<RecipeVO> showlist = new ArrayList<RecipeVO>();
//		
//		for(int i=0; i<RECIPE_SEQ.size(); i++) {
//		  List<RecipeVO> plus =session.selectList("showlist", RECIPE_SEQ.get(i));
//		  showlist.add(i, (RecipeVO) session.selectList("showlist", RECIPE_SEQ.get(i)));
//		
//		}
//		
//		session.close();
//		return showlist;
//	}
//	public List<RecipeVO> far(String userid){
//		SqlSession session=sqlSessionFactory.openSession();
//		List<RecipeVO> rlist = session.selectList("favoriteR",userid);
//		session.close();
//		return rlist;
//	}
	
	
}

	





		

	

