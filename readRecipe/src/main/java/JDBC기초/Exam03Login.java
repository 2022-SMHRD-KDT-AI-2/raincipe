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
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String userPw = "hr";
			conn = DriverManager.getConnection(url, user, userPw);
		
			String sql = "select * from aimemeber where id = ? and pw = ?"; // ���̺��� ���� �ҷ��� �� �α���
			
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
				String resultId = rs.getString("id");
				String resultPw = rs.getString("pw");
				String resultName = rs.getString("name");
				String resultNick = rs.getString("nick");
				String resultEmail = rs.getString("email");
			
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
