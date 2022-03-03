package readRecipe.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex02Delete {

	public static void main(String[] args) {

		// 1. ����ڷκ��� ���̵� ��й�ȣ �Է¹ޱ�
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		System.out.print("ID �Է� >> ");
		String id = sc.next();
		System.out.print("PW �Է� >> ");
		String pw = sc.next();
		// 2. ���̵�� ��й�ȣ�� ��ġ�Ҷ��� ȸ��Ż���Ű��(JDBC)
		// 2-1. DB����
		try {
			// (1) ����̹� �����ε�
			Class.forName("oracle.jdbc.OracleDriver");
			// (2) DB����
			String ur1 = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
			String user = "cgi_5_0216_5";
			String userPw = "smhrd5";
			conn = DriverManager.getConnection(ur1, user, userPw);

			// 2-2. SQL������

			String sq1 = "delete aimember where id = ? and pw = ?";
			psmt = conn.prepareStatement(sq1);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			int r = psmt.executeUpdate();
			// 3. ȸ��Ż�� ���� �� ȸ��Ż�� ����! ���
			if (r > 0) {
				System.out.println("ȸ��Ż�� ���� ! ");
			}

			// 4. ���� �� ȸ��Ż�� ����.. ���
			else {
				System.out.println("ȸ��Ż�� ���� .. ");
			}
			// 5. �ݱ�(�ڿ��ݳ�)
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Ŭ���� ã������");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL���ù���");
		} finally {
			try {
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("�ڿ��ݳ��� ����");
			}
		}

	}

}
