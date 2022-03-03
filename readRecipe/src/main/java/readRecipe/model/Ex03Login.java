package readRecipe.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Ex03Login {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		// 1. 사용자로부터 아이디 비밀번호 입력받기
		System.out.print("ID 입력 >> ");
		String id = sc.next();
		System.out.print("PW 입력 >> ");
		String pw = sc.next();
		
		//2.드라이버 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//3. DB연결
		String ur1 = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:XE";	
		String user = "cgi_5_0216_5"; // 계정
		String userPw = "smhrd5"; // 계정 비밀번호
		conn = DriverManager.getConnection(ur1,user,userPw);
		
			
		//4 sql문장 준비
		String sq1 = "select * from aimember where id =? and pw = ?";
		psmt = conn.prepareStatement(sq1);
		psmt.setString(1, id);
		psmt.setString(2, pw);
		
		//select절은 table에 영향을 끼치지 않음 -> executeQuery() 사용
		//insert,delete,update -> executeUpdate() 사용
		rs =psmt.executeQuery();		
		//rs -->DB자원, table과 같은 형태를 가진다
		//rs는 curssor를 가지고있다.
		//cursor는 맨 처음에 column명을 가리키고 있다.
		//cursor가 가리키는 행에 대해서만 데이터를 가져올 수 있다.
		if(rs.next()) {
			//데이터꺼내오기
			String resultId = rs.getString("id");
			String resultPw = rs.getString("pw");
			String resultName = rs.getString("name");
			int resultAge =rs.getInt("age");
			
			System.out.println("아이디 \t 비밀번호 \t이름 \t 나이");
			System.out.print(resultId + "\t");
			System.out.print(resultPw + "\t");
			System.out.print(resultName + "\t");
			System.out.print(resultAge + "\t");
			
			
		}
		
		} catch (ClassNotFoundException e) {
			 
			e.printStackTrace();
		} catch (SQLException e) {
			 
			e.printStackTrace();
		} finally {
			try {if(rs!=null)
				rs.close();
				if(psmt!=null)
				psmt.close();
				if(conn!=null)
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		

	}

}
