package bean;

public class CustomerStatus {
	 //CustomerStatus table columns – SSN ID, Customer ID, Status, Message, Last Updated

	private int ssnId;
	private int custId;
	private String status;
	private String message;
	private String lastUpdate;
	
	public int getSsnId() {
		return ssnId;
	}
	public void setSsnId(int ssnId) {
		this.ssnId = ssnId;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(String lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	public CustomerStatus(int ssnId, int custId, String status, String message,
			String lastUpdate) {
		super();
		this.ssnId = ssnId;
		this.custId = custId;
		this.status = status;
		this.message = message;
		this.lastUpdate = lastUpdate;
	}
	public CustomerStatus() {
		super();
	}
	
	
}
