package JDBC����;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Exam02Delete {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
	
		Connection conn = null;
		PreparedStatement psmt = null;
		
		// 1. ����ڷκ��� ID�� PW �Է¹ޱ�
		
		System.out.print("ID �Է� : ");
		String id = scan.next();
		
		System.out.print("PW �Է� : ");
		String pw = scan.next();
		
		// 2. ���̵�� ��й�ȣ�� ��ġ�Ҷ��� ȸ��Ż���Ű��(JDBC)
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			
		// 2-1. DB����
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
				String user = "cgi_5_0216_5";
				String userPw = "smhrd5";
		
				conn = DriverManager.getConnection(url, user, userPw);
				
				
		
		// 2-2. SQL�� ����
				String sql = "delete T_USER where USER_ID = ? and USER_PW = ?"; // ���س��� ���� ? ���¹� Ȯ��
				
				psmt = conn.prepareStatement(sql);
				
				if(psmt == null) {
					System.out.println("psmt null");
				}
				psmt.setString(1, id);
				psmt.setString(2, pw);
				
				int r = psmt.executeUpdate();
				System.out.println(r);
			
							
		// 3. ȸ��Ż�� ������ ȸ��Ż�� ����! ���
				 if(r > 0) {
						System.out.println("ȸ��Ż�� ����!");
					}else {
		// 4. ȸ��Ż�� ���н� ȸ��Ż�� ����.. ���
						System.out.println("ȸ��Ż�� ����..");
					}
			} catch(ClassNotFoundException e) {
				e.printStackTrace();
				System.out.println("Ŭ���� ã������");
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("SQL���ù���");
			}finally {
		
				// 5. �ݱ�
				try {
					if(psmt != null) {
						psmt.close();
					}
					if(conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.println("�ڿ��ݳ��� ����");
				}
			}
	}
}
