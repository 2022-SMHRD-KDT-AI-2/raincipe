package readRecipe.model;

public class FavoriteVO {
	private int favorite_seq;
	private int fecipe_seq;
	private int my_recipe_seq;
	private String reg_date;
	private String user_id;
	
	public FavoriteVO() { };
	
	public FavoriteVO(int favorite_seq, int fecipe_seq, int my_recipe_seq, String reg_date, String user_id) {
		super();
		this.favorite_seq = favorite_seq;
		this.fecipe_seq = fecipe_seq;
		this.my_recipe_seq = my_recipe_seq;
		this.reg_date = reg_date;
		this.user_id = user_id;
	}

	public int getFavorite_seq() {
		return favorite_seq;
	}

	public void setFavorite_seq(int favorite_seq) {
		this.favorite_seq = favorite_seq;
	}

	public int getRecipe_seq() {
		return fecipe_seq;
	}

	public void setFecipe_seq(int fecipe_seq) {
		this.fecipe_seq = fecipe_seq;
	}

	public int getMy_recipe_seq() {
		return my_recipe_seq;
	}

	public void setMy_recipe_seq(int my_recipe_seq) {
		this.my_recipe_seq = my_recipe_seq;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
