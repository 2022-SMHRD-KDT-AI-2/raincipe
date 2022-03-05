package JDBC기초;

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
		
		// 1. 사용자로부터 ID와 PW 입력받기
		
		System.out.print("ID 입력 : ");
		String id = scan.next();
		
		System.out.print("PW 입력 : ");
		String pw = scan.next();
		
		// 2. 아이디와 비밀번호가 일치할때만 회원탈퇴시키기(JDBC)
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
			
		// 2-1. DB연결
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
				String user = "cgi_5_0216_5";
				String userPw = "smhrd5";
		
				conn = DriverManager.getConnection(url, user, userPw);
				
				
		
		// 2-2. SQL문 전송
				String sql = "delete T_USER where USER_ID = ? and USER_PW = ?"; // 다해놓고 못함 ? 쓰는법 확인
				
				psmt = conn.prepareStatement(sql);
				
				if(psmt == null) {
					System.out.println("psmt null");
				}
				psmt.setString(1, id);
				psmt.setString(2, pw);
				
				int r = psmt.executeUpdate();
				System.out.println(r);
			
							
		// 3. 회원탈퇴 성공시 회원탈퇴 성공! 출력
				 if(r > 0) {
						System.out.println("회원탈퇴 성공!");
					}else {
		// 4. 회원탈퇴 실패시 회원탈퇴 실패.. 출력
						System.out.println("회원탈퇴 실패..");
					}
			} catch(ClassNotFoundException e) {
				e.printStackTrace();
				System.out.println("클래스 찾지못함");
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("SQL관련문제");
			}finally {
		
				// 5. 닫기
				try {
					if(psmt != null) {
						psmt.close();
					}
					if(conn != null) {
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					System.out.println("자원반납시 오류");
				}
			}
	}
}
