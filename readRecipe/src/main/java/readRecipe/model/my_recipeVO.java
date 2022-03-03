package readRecipe.model;

public class my_recipeVO {
private int my_recipe_seq ;
private String my_recipe_name ;
private String my_recipe_ingre ;
private String my_recipe_step ;
private String my_recipe_img1 ;
private String my_recipe_img2 ;
private String my_recipe_img3 ;
private String reg_date ;
private int recipe_seq ;
private int likes ;
private int quotes ;
private int cnt ;
private String user_id ;
private int channel_id ;
private int super_my_recipe_se;
public my_recipeVO() {}
public my_recipeVO(int my_recipe_seq, String my_recipe_name, String my_recipe_ingre, String my_recipe_step,
		String my_recipe_img1, String my_recipe_img2, String my_recipe_img3, String reg_date, int recipe_seq, int likes,
		int quotes, int cnt, String user_id, int channel_id, int super_my_recipe_se) {
	
	this.my_recipe_seq = my_recipe_seq;
	this.my_recipe_name = my_recipe_name;
	this.my_recipe_ingre = my_recipe_ingre;
	this.my_recipe_step = my_recipe_step;
	this.my_recipe_img1 = my_recipe_img1;
	this.my_recipe_img2 = my_recipe_img2;
	this.my_recipe_img3 = my_recipe_img3;
	this.reg_date = reg_date;
	this.recipe_seq = recipe_seq;
	this.likes = likes;
	this.quotes = quotes;
	this.cnt = cnt;
	this.user_id = user_id;
	this.channel_id = channel_id;
	this.super_my_recipe_se = super_my_recipe_se;
}
public int getMy_recipe_seq() {
	return my_recipe_seq;
}
public void setMy_recipe_seq(int my_recipe_seq) {
	this.my_recipe_seq = my_recipe_seq;
}
public String getMy_recipe_name() {
	return my_recipe_name;
}
public void setMy_recipe_name(String my_recipe_name) {
	this.my_recipe_name = my_recipe_name;
}
public String getMy_recipe_ingre() {
	return my_recipe_ingre;
}
public void setMy_recipe_ingre(String my_recipe_ingre) {
	this.my_recipe_ingre = my_recipe_ingre;
}
public String getMy_recipe_step() {
	return my_recipe_step;
}
public void setMy_recipe_step(String my_recipe_step) {
	this.my_recipe_step = my_recipe_step;
}
public String getMy_recipe_img1() {
	return my_recipe_img1;
}
public void setMy_recipe_img1(String my_recipe_img1) {
	this.my_recipe_img1 = my_recipe_img1;
}
public String getMy_recipe_img2() {
	return my_recipe_img2;
}
public void setMy_recipe_img2(String my_recipe_img2) {
	this.my_recipe_img2 = my_recipe_img2;
}
public String getMy_recipe_img3() {
	return my_recipe_img3;
}
public void setMy_recipe_img3(String my_recipe_img3) {
	this.my_recipe_img3 = my_recipe_img3;
}
public String getReg_date() {
	return reg_date;
}
public void setReg_date(String reg_date) {
	this.reg_date = reg_date;
}
public int getRecipe_seq() {
	return recipe_seq;
}
public void setRecipe_seq(int recipe_seq) {
	this.recipe_seq = recipe_seq;
}
public int getLikes() {
	return likes;
}
public void setLikes(int likes) {
	this.likes = likes;
}
public int getQuotes() {
	return quotes;
}
public void setQuotes(int quotes) {
	this.quotes = quotes;
}
public int getCnt() {
	return cnt;
}
public void setCnt(int cnt) {
	this.cnt = cnt;
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public int getChannel_id() {
	return channel_id;
}
public void setChannel_id(int channel_id) {
	this.channel_id = channel_id;
}
public int getSuper_my_recipe_se() {
	return super_my_recipe_se;
}
public void setSuper_my_recipe_se(int super_my_recipe_se) {
	this.super_my_recipe_se = super_my_recipe_se;
}


}
