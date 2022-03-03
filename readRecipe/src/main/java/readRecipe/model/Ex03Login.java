package readRecipe.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex03Login {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		// 1. ����ڷκ��� ���̵� ��й�ȣ �Է¹ޱ�
		System.out.print("ID �Է� >> ");
		String id = sc.next();
		System.out.print("PW �Է� >> ");
		String pw = sc.next();
		
		//2.����̹� �����ε�
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//3. DB����
		String ur1 = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";	
		String user = "cgi_5_0216_5"; // ����
		String userPw = "smhrd5"; // ���� ��й�ȣ
		conn = DriverManager.getConnection(ur1,user,userPw);
		
			
		//4 sql���� �غ�
		String sq1 = "select * from aimember where id =? and pw = ?";
		psmt = conn.prepareStatement(sq1);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		//select���� table�� ������ ��ġ�� ���� -> executeQuery() ���
		//insert,delete,update -> executeUpdate() ���
		rs =psmt.executeQuery();		
		//rs -->DB�ڿ�, table�� ���� ���¸� ������
		//rs�� curssor�� �������ִ�.
		//cursor�� �� ó���� column���� ����Ű�� �ִ�.
		//cursor�� ����Ű�� �࿡ ���ؼ��� �����͸� ������ �� �ִ�.
		if(rs.next()) {
			//�����Ͳ�������
			String resultId = rs.getString("id");
			String resultPw = rs.getString("pw");
			String resultName = rs.getString("name");
			int resultAge =rs.getInt("age");
			
			System.out.println("���̵� \t ��й�ȣ \t�̸� \t ����");
			System.out.print(resultId + "\t");
			System.out.print(resultPw + "\t");
			System.out.print(resultName + "\t");
			System.out.print(resultAge + "\t");
			
			
		}
		
		} catch (ClassNotFoundException e) {
			 
			e.printStackTrace();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		} finally {
			try {if(rs!=null)
				rs.close();
				if(psmt!=null)
				psmt.close();
				if(conn!=null)
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		

	}

}
