package readRecipe.model;

public class SubscriptionVO {

	private int subscription_seq;
	private String subscription_id;
	private int channel_seq;
	private String subscription_date;
	
	public SubscriptionVO() { };
	
	public SubscriptionVO(int subscription_seq, String subscription_id, int channel_seq, String subscription_date) {
		super();
		this.subscription_seq = subscription_seq;
		this.subscription_id = subscription_id;
		this.channel_seq = channel_seq;
		this.subscription_date = subscription_date;
	}

	public int getSubscription_seq() {
		return subscription_seq;
	}

	public void setSubscription_seq(int subscription_seq) {
		this.subscription_seq = subscription_seq;
	}

	public String getSubscription_id() {
		return subscription_id;
	}

	public void setSubscription_id(String subscription_id) {
		this.subscription_id = subscription_id;
	}

	public int getChannel_seq() {
		return channel_seq;
	}

	public void setChannel_seq(int channel_seq) {
		this.channel_seq = channel_seq;
	}

	public String getSubscription_date() {
		return subscription_date;
	}

	public void setSubscription_date(String subscription_date) {
		this.subscription_date = subscription_date;
	}
	
	
}
