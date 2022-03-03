package readRecipe.model;	

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

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
	   
	// �־��� Recipe_seq�� �ش��ϴ� content�� �������� ����
	public RecipeVO getbyRecipe_seq(int Recipe_seq) {
		SqlSession session=sqlSessionFactory.openSession();
		RecipeVO vo = session.selectOne("getbyRecipe_seq",Recipe_seq);
		session.close();
		return vo;
	}
	

}