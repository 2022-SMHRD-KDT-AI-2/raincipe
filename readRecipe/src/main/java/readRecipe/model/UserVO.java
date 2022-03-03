package readRecipe.model;

public class UserVO {
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_nick;
	private String user_email;
	private String user_profile_img;
	private String user_joindate;
	private char admin_yn;
	
	public UserVO() { };

	public UserVO(String user_id, String user_pw, String user_name, String user_nick, String user_email,
			String user_profile_img, String user_joindate, char admin_yn) {
		
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_nick = user_nick;
		this.user_email = user_email;
		this.user_profile_img = user_profile_img;
		this.user_joindate = user_joindate;
		this.admin_yn = admin_yn;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_profile_img() {
		return user_profile_img;
	}

	public void setUser_profile_img(String user_profile_img) {
		this.user_profile_img = user_profile_img;
	}

	public String getUser_joindate() {
		return user_joindate;
	}

	public void setUser_joindate(String user_joindate) {
		this.user_joindate = user_joindate;
	}

	public char getAdmin_yn() {
		return admin_yn;
	}

	public void setAdmin_yn(char admin_yn) {
		this.admin_yn = admin_yn;
	}
  
	
	
	
	
	
}
