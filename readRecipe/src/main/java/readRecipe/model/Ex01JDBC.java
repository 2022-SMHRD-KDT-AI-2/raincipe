package readRecipe.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex01JDBC {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		// ȸ������
		System.out.print("ID �Է� >> ");
		String id = sc.next();
		// pw
		System.out.print("PW �Է� >> ");
		String pw = sc.next();
		// name
		System.out.print("�̸� �Է� >> ");
		String name = sc.next();
		// age
		System.out.print("���� �Է� >>");
		int age = sc.nextInt();

		// 1.�����ͺ��̽� ����
		try {
			// ����ó������
			// try -> �ϴ� �ѹ� �õ��غ��� ����
			// (1)�������̽� ����̹��� �����ϴ� �۾�
			// ------> ����̹� ���� �ε�!!!!(�����ϴ� ���� DB������ ����)
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 1.ojdbc6.jar���� ������Ʈ�� �־��� �� Ȯ���Ұ�
			// 2. �Ű������� ��Ÿ�� �ִ��� Ȯ���Ұ�
			// forName �޼ҵ尡 throws�� ClassNotFoundException������ ������
			// �ݵ�� try-catch�������� ������ �Ѵ�!!!

			// (2)�����ͺ��̽� ����(����,��й�ȣ,�ּұ��� ���� ����!)
			String ur1 = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
			// @localhost -> ip�ּ�
			// 1521 -> port number
			// xe -> database ����
			String user = "cgi_5_0216_5"; // ����
			String userPw = "smhrd5"; // ���� ��й�ȣ
			conn = DriverManager.getConnection(ur1, user, userPw);
			// Connection -> java�� DB �����ϴ� �������

			// 2.SQL�� �������ֱ�
			String sql = "insert into aimember values(?,?,?,?)";
			psmt = conn.prepareStatement(sql); // sql���� ����ִ� �۾�!
			// DB�� ������ �� �ִ� �԰ݿ� sql������ ������

			// ?���� ä��� �۾� ����
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, name);
			psmt.setInt(4, age);

			// sql�� ����
			int r = psmt.executeUpdate();
			// r-->���̺� ������ ���� ���� ����

			// �������п��� �Ǻ��ϱ�
			// 3. ����� �̿��� �۾�ó��
			if (r > 0) {
				System.out.println("ȸ������ ���� !");
			} else {
				System.out.println("ȸ������ ����..");

			}

		} catch (ClassNotFoundException e) {
			// catch ->try�ȿ��� ���ܻ�Ȳ�� �߻����� �� ����ִ� ����
			// ()�ȿ� �����ϴ� ���ܻ�Ȳ�� ���ؼ� �����!!!
			e.printStackTrace(); // ---> �����ڸ� ���� ���
			System.out.println("Ŭ���� ã������");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("SQL���ù���");
		} finally {
			// exception�� �߻��ϴ��� �ݵ�� �ѹ��� ������ ����!
			// 4. �ݱ�(�����ͺ��̽� �ڿ� �ݳ�)
			try {
				//�ڿ��� �ݳ��Ҷ��� ������ ������ �������� �ݳ��Ѵ�!
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
