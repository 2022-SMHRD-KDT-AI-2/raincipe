package JDBC기초;

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
		
		// 회원가입
		System.out.print(" ID 입력 >> ");
		String id = scan.next();
		
		//pw
		System.out.print(" PW 입력 >> ");
		String pw = scan.next();
		
		//name
		System.out.print(" 이름 입력 >> ");
		String name = scan.next();
		
		//nickname
		System.out.print(" 닉네임 입력 >> ");
		String nick = scan.next();
		
		//email
		System.out.print(" 이메일 입력 >> ");
		String email = scan.next();
		
		//profile
		System.out.print(" 프로필 입력 >> ");
		String profile = scan.next();
				
			// JDBC 코드
			// 1. 데이터베이스 연결
			try {
				// 예외처리 구문
				// try -> 일단 한번 시도해보는 구간 
				// (1) 인터페이스 드라이버를 구현하는 작업
				// --> 드라이버 동적 로딩(실행하는 순간 DB종류가 결정됨)
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// 1. ojdbc6.jar 파일 프로젝트에 넣었는지 확인할 것
				// 2. 매개변수에 오타가 있지 않은지 확인할 것
				// forName 메소드가 throws로 ClassNotFoundException을 던졌기 때문에
				// 반드시 try - catch구문으로 잡아줘야함
			
				//(2) 데이터베이스 연결(계정, 비밀번호, 주소까지 전부 설정)
				String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";
				// @localhost -> 주소
				// 1521 -> port number
				// xe -> database 별명
				String user = "cgi_5_0216_5"; // 계정
				String userPw = "smhrd5"; // 계정 비밀번호
				conn = DriverManager.getConnection(url, user, userPw);
				// Connection -> java와 DB를 연결하는 연결통로
				// 2. SQL문 전송
				String sql = "insert into T_USER values(?,?,?,?,?,?,LocalDate.now(),N)";

				//--> 테이블 생성하실때, aimemeber라고 생성하셔서 오타가 있었어요!!
				psmt = conn.prepareStatement(sql); //sql 구문 담아주는 작업
				// DB에 전송할 수 있는 규격에 sql을 담아줬다.
			
				// ?인자 채우기 작업 진행
				psmt.setNString(1, id);
				psmt.setNString(2, pw);
				psmt.setNString(3, name);
				psmt.setNString(4, nick);
				psmt.setNString(5, email);
				psmt.setNString(6, profile);
				// Colum순서와 똑같이 채워야함
			
				// sql문 전송
				int r = psmt.executeUpdate(); // SQL문 전송으로 인해 영향을 받은 데이블 행의 갯수
				//매개변수 아무것도 집어넣지 말 것, 매개변수가 들어가게되면 위에서 작성했던 ?,?,?,? 가 사라지는 것
				// 성공, 실패여부 판결하기
				// 3. 결과를 이용한 작업처리
				if(r > 0) {
					System.out.println("데이터추가 성공!"); // System.out.println("회원가입 성공!"); 
				}else {
				System.out.println("데이터추가 실패.."); // System.out.println("회원가입 실패..");
				}
			
			} catch (ClassNotFoundException e) {
				// catch -> try안에서 예외상황이 발생했을 때 잡아주는 구간
				// ()안에 존재하는 예외상황에 대해서 잡아줌
				e.printStackTrace(); // --> 개발자를 위한 기능
				System.out.println("클래스 찾지못함");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("SQL관련문제");
			} finally {
				// exception이 발생하더라도 반드시 한번은 들어오는 구간
				// 4. 닫기(데이터베이스 자원 반납)
				try {
					// 자원을 반납할때는 열어준 순서의 역순으로 닫아준다
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