package JDBC����;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Exam01JDBC {
	
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		
		Connection conn = null;
		PreparedStatement psmt = null;
		
		// ȸ������
		System.out.print(" ID �Է� >> ");
		String id = scan.next();
		
		//pw
		System.out.print(" PW �Է� >> ");
		String pw = scan.next();
		
		//name
		System.out.print(" �̸� �Է� >> ");
		String name = scan.next();
		
		//nickname
		System.out.print(" �г��� �Է� >> ");
		String nick = scan.next();
		
		//email
		System.out.print(" �̸��� �Է� >> ");
		String email = scan.next();
		
		//profile
		System.out.print(" ������ �Է� >> ");
		String profile = scan.next();
				
			// JDBC �ڵ�
			// 1. �����ͺ��̽� ����
			try {
				// ����ó�� ����
				// try -> �ϴ� �ѹ� �õ��غ��� ���� 
				// (1) �������̽� ����̹��� �����ϴ� �۾�
				// --> ����̹� ���� �ε�(�����ϴ� ���� DB������ ������)
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 1. ojdbc6.jar ���� ������Ʈ�� �־����� Ȯ���� ��
				// 2. �Ű������� ��Ÿ�� ���� ������ Ȯ���� ��
				// forName �޼ҵ尡 throws�� ClassNotFoundException�� ������ ������
				// �ݵ�� try - catch�������� ��������
			
				//(2) �����ͺ��̽� ����(����, ��й�ȣ, �ּұ��� ���� ����)
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
				// @localhost -> �ּ�
				// 1521 -> port number
				// xe -> database ����
				String user = "cgi_5_0216_5"; // ����
				String userPw = "smhrd5"; // ���� ��й�ȣ
				conn = DriverManager.getConnection(url, user, userPw);
				// Connection -> java�� DB�� �����ϴ� �������
				// 2. SQL�� ����
				String sql = "insert into T_USER values(?,?,?,?,?,?,LocalDate.now(),N)";

				//--> ���̺� �����ϽǶ�, aimemeber��� �����ϼż� ��Ÿ�� �־����!!
				psmt = conn.prepareStatement(sql); //sql ���� ����ִ� �۾�
				// DB�� ������ �� �ִ� �԰ݿ� sql�� ������.
			
				// ?���� ä��� �۾� ����
				psmt.setNString(1, id);
				psmt.setNString(2, pw);
				psmt.setNString(3, name);
				psmt.setNString(4, nick);
				psmt.setNString(5, email);
				psmt.setNString(6, profile);
				// Colum������ �Ȱ��� ä������
			
				// sql�� ����
				int r = psmt.executeUpdate(); // SQL�� �������� ���� ������ ���� ���̺� ���� ����
				//�Ű����� �ƹ��͵� ������� �� ��, �Ű������� ���ԵǸ� ������ �ۼ��ߴ� ?,?,?,? �� ������� ��
				// ����, ���п��� �ǰ��ϱ�
				// 3. ����� �̿��� �۾�ó��
				if(r > 0) {
					System.out.println("�������߰� ����!"); // System.out.println("ȸ������ ����!"); 
				}else {
				System.out.println("�������߰� ����.."); // System.out.println("ȸ������ ����..");
				}
			
			} catch (ClassNotFoundException e) {
				// catch -> try�ȿ��� ���ܻ�Ȳ�� �߻����� �� ����ִ� ����
				// ()�ȿ� �����ϴ� ���ܻ�Ȳ�� ���ؼ� �����
				e.printStackTrace(); // --> �����ڸ� ���� ���
				System.out.println("Ŭ���� ã������");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("SQL���ù���");
			} finally {
				// exception�� �߻��ϴ��� �ݵ�� �ѹ��� ������ ����
				// 4. �ݱ�(�����ͺ��̽� �ڿ� �ݳ�)
				try {
					// �ڿ��� �ݳ��Ҷ��� ������ ������ �������� �ݾ��ش�
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