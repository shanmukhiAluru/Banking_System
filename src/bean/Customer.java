package bean;

import java.util.HashSet;
import java.util.Set;

public class Customer {
//	Customer SSN ID, Customer Name, Age, Address Line1, Address Line2, City, State
	private int custId;
	
	private String custName;
	private int ssnId;
	private int age;
	private String add_line1;
	private String add_line2;
	private String city;
	private String state;
	private CustomerStatus custStatus;
	private Set<Account> accList;
	
	
	
	public CustomerStatus getCustStatus() {
		return custStatus;
	}
	public void setCustStatus(CustomerStatus custStatus) {
		this.custStatus = custStatus;
	}
	public Customer(int custId, String custName, int ssnId, int age,
			String add_line1, String add_line2, String city, String state
			) {
		super();
		this.custId = custId;
		this.custName = custName;
		this.ssnId = ssnId;
		this.age = age;
		this.add_line1 = add_line1;
		this.add_line2 = add_line2;
		this.city = city;
		this.state = state;
		
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public int getSsnId() {
		return ssnId;
	}
	public void setSsnId(int ssnId) {
		this.ssnId = ssnId;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAdd_line1() {
		return add_line1;
	}
	public void setAdd_line1(String add_line1) {
		this.add_line1 = add_line1;
	}
	public String getAdd_line2() {
		return add_line2;
	}
	public void setAdd_line2(String add_line2) {
		this.add_line2 = add_line2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Set<Account> getAccList() {
		return accList;
	}
	public void setAccList(Set<Account> accList) {
		this.accList = accList;
	}
	
	
}



