package readRecipe.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex02Delete {

	public static void main(String[] args) {

		// 1. 사용자로부터 아이디 비밀번호 입력받기
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		System.out.print("ID 입력 >> ");
		String id = sc.next();
		System.out.print("PW 입력 >> ");
		String pw = sc.next();
		// 2. 아이디와 비밀번호가 일치할때만 회원탈퇴시키기(JDBC)
		// 2-1. DB연결
		try {
			// (1) 드라이버 동적로딩
			Class.forName("oracle.jdbc.OracleDriver");
			// (2) DB연결
			String ur1 = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
			String user = "cgi_5_0216_5";
			String userPw = "smhrd5";
			conn = DriverManager.getConnection(ur1, user, userPw);

			// 2-2. SQL문전송

			String sq1 = "delete aimember where id = ? and pw = ?";
			psmt = conn.prepareStatement(sq1);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			int r = psmt.executeUpdate();
			// 3. 회원탈퇴 성공 시 회원탈퇴 성공! 출력
			if (r > 0) {
				System.out.println("회원탈퇴 성공 ! ");
			}

			// 4. 실패 시 회원탈퇴 실패.. 출력
			else {
				System.out.println("회원탈퇴 실패 .. ");
			}
			// 5. 닫기(자원반납)
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("클래스 찾지못함");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL관련문제");
		} finally {
			try {
				if (psmt != null)
					psmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("자원반납시 오류");
			}
		}

	}

}
