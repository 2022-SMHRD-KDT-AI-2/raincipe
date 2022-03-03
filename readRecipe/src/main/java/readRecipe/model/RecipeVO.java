package readRecipe.model;

public class RecipeVO {
	private int recipe_seq;
	private String recipe_name;
	private String recipe_ingredient;
	private String recipe_step;
	private String recipe_img1;
	
	public RecipeVO() { } 
	
	public RecipeVO(int recipe_seq, String recipe_name, String recipe_ingredient, String recipe_step,
			String recipe_img1) {
		super();
		this.recipe_seq = recipe_seq;
		this.recipe_name = recipe_name;
		this.recipe_ingredient = recipe_ingredient;
		this.recipe_step = recipe_step;
		this.recipe_img1 = recipe_img1;
	}

	public int getRecipe_seq() {
		return recipe_seq;
	}

	public void setRecipe_seq(int recipe_seq) {
		this.recipe_seq = recipe_seq;
	}

	public String getRecipe_name() {
		return recipe_name;
	}

	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}

	public String getRecipe_ingredient() {
		return recipe_ingredient;
	}

	public void setRecipe_ingredient(String recipe_ingredient) {
		this.recipe_ingredient = recipe_ingredient;
	}

	public String getRecipe_step() {
		return recipe_step;
	}

	public void setRecipe_step(String recipe_step) {
		this.recipe_step = recipe_step;
	}

	public String getRecipe_img1() {
		return recipe_img1;
	}

	public void setRecipe_img1(String recipe_img1) {
		this.recipe_img1 = recipe_img1;
	}
	
}
