package readRecipe.model;	

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import readRecipe.model.RecipeVO;

public class RecipeDAO{
	
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
	

}