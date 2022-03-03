package JDBC����;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Exam03Login {
	
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		System.out.print("ID�Է� : ");
		String id = scan.next();
		
		System.out.print("PW �Է� : ");
		String pw = scan.next();
		
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
			String user = "cgi_5_0216_5";
			String userPw = "smhrd5";
			conn = DriverManager.getConnection(url, user, userPw);
		
			String sql = "select * from T_USER where USER_ID = ? and USER_PW = ?"; // ���̺��� ���� �ҷ��� �� �α���
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setNString(1, id);
			psmt.setNString(2, pw);
			
			//select���� table�� ������ ��ġ�� ���� -> executeQuery()���
			// insert, delete, update -> executeUpdate() ���
			rs = psmt.executeQuery();
			// rs -> DB�ڿ�, table�� ���� ���¸� ����
			// rs�� cursor�� �������ִ�.
			// cursor�� �� ó���� column ���� ����Ű���ִ�.
			// cursor�� ����Ű�� �࿡ ���ؼ��� �����͸� ������ �� �ֵ�.
			if(rs.next()) {
				// ������ ��������
				String resultId = rs.getString("USER_ID");
				String resultPw = rs.getString("USER_PW");
				String resultName = rs.getString("USER_NAME");
				String resultNick = rs.getString("USER_NICK");
				String resultEmail = rs.getString("USER_EMAIL");
			
				System.out.println("���̵�\t��й�ȣ\t�̸�\t�г���\t�̸���");
				System.out.print(resultId + "\t");
				System.out.print(resultPw + "\t");
				System.out.print(resultName + "\t");
				System.out.print(resultNick + "\t");
				System.out.print(resultEmail + "\t");
				
			}
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Ŭ���� ã������");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL���ù���");
		} finally {
			try {
				if(rs != null) {
					rs.close();
				}
				if(psmt != null) {
					psmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException e) {
				e.printStackTrace();
				System.out.println("�ڿ��ݴս� ����");
			}
		}
		
	}

}
