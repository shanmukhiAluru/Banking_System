package service;

import java.util.ArrayList;

import dao.CustomerDao;
import bean.Account;
import bean.AccountStatus;
import bean.Customer;
import bean.CustomerStatus;
import bean.login;

public class CustomerService {
	CustomerDao cd = new CustomerDao();

	public login userLogin(String username, String password) 
	{
		return cd.userLogin(username, password);
	}

	public int createcustomer(Customer cusobj) 
	{
		return cd.createcustomer(cusobj);

	}

public int validssn(int ssnid)
	{
		int i=0;
		ArrayList<Customer> ssnl=cd.viewAllCustomers();
		for(Customer s:ssnl)
		{
			if(s.getSsnId()==ssnid)
			{
				i++;
			}
		}
		return i;
	}

	public Customer searchCustByID(int custID)
	{
		return cd.searchCustByID(custID);

	}
	
	public CustomerStatus searchCustomerStatusByID(int custID) {
		{
			return cd.searchCustomerStatusByID(custID);
		}
	}

	public ArrayList<Customer> viewAllCustomers() 
	{
		ArrayList<Customer> cl=cd.viewAllCustomers();
		return cl;

	}
	public ArrayList<CustomerStatus> viewAllCustomerStatus() 
	{
		ArrayList<CustomerStatus> cl=cd.viewAllCustomerStatus();
		return cl;

	}


	public int updateCustomer(Customer cust) 
	{
		int i=0;
		cd.updateCustomer(cust);
		i=1;
		return i;
	}
	public void updateCustomerStatus(CustomerStatus cust) {
		cd.updateCustomerStatus(cust);
	}

	public int deleteCustomer(Customer cust) 
	{
		int i=0;
		cd.deleteCustomer(cust);
		i=1;
		return i;
	}
	

	public int createAccount(Account acc,int custId) 
	{   
		int i=0,accId=0;
		CustomerStatus cs=cd.searchCustomerStatusByID(custId);
		if(cs.getStatus().equals("active"))
		{
				       
				       i++;
		}
		if(i>0)
		{
			accId=cd.createAccount(acc);
		}
		return accId;
		

	}
	public int createAccountStatus(AccountStatus acc) {
		return cd.createAccountStatus(acc);
	}

	public Account searchAccByAccountId(int accountId)
	{
		return cd.searchAccByAccountId(accountId);

	}
	public ArrayList<Account> viewAllAccount() 
	{
		ArrayList<Account> al=cd.viewAllAccounts();
		return al; 
		
	}
	
	public void updateAccount(Account acc) 
	{
		cd.updateAccount(acc);
	}
	public void deleteAccount(Account acc) 
	{
		cd.deleteAccount(acc);
	}
	public int createcustomerStatus(CustomerStatus cusobj) {
		return cd.createcustomerStatus(cusobj);
	}




}
