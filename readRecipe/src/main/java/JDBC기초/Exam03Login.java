package JDBC기초;

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
		
		System.out.print("ID입력 : ");
		String id = scan.next();
		
		System.out.print("PW 입력 : ");
		String pw = scan.next();
		
	
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "hr";
			String userPw = "hr";
			conn = DriverManager.getConnection(url, user, userPw);
		
			String sql = "select * from aimemeber where id = ? and pw = ?"; // 테이블을 먼저 불러온 후 로그인
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setNString(1, id);
			psmt.setNString(2, pw);
			
			//select절은 table에 영향을 끼치지 않음 -> executeQuery()사용
			// insert, delete, update -> executeUpdate() 사용
			rs = psmt.executeQuery();
			// rs -> DB자원, table과 같은 형태를 가짐
			// rs는 cursor를 가지고있다.
			// cursor는 맨 처음에 column 명을 가리키고있다.
			// cursor가 가리키는 행에 대해서만 데이터를 가져올 수 있따.
			if(rs.next()) {
				// 데이터 꺼내오기
				String resultId = rs.getString("id");
				String resultPw = rs.getString("pw");
				String resultName = rs.getString("name");
				String resultNick = rs.getString("nick");
				String resultEmail = rs.getString("email");
			
				System.out.println("아이디\t비밀번호\t이름\t닉네임\t이메일");
				System.out.print(resultId + "\t");
				System.out.print(resultPw + "\t");
				System.out.print(resultName + "\t");
				System.out.print(resultNick + "\t");
				System.out.print(resultEmail + "\t");
			}
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("클래스 찾지못함");
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL관련문제");
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
				System.out.println("자원반닙시 오류");
			}
		}
		
	}

}
