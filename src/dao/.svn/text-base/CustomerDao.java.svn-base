package dao;

import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.Account;
import bean.AccountStatus;
import bean.Customer;
import bean.CustomerStatus;
import bean.login;

;

public class CustomerDao {

	public login userLogin(String username, String password) {
		login l1 = new login();

		
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		Query query = s
				.createQuery("from login l where l.username=? and l.password=?");
		query.setParameter(0, username);
		query.setParameter(1, password);

		ArrayList<login> logList = (ArrayList<login>) query.list();
		if (logList.size() == 0)
			return null;
		l1 = logList.get(0);
		tx.commit();

		return l1;

	}
	public int createcustomerStatus(CustomerStatus cusobj) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		int cus = (Integer) session.save(cusobj);
		tx.commit();
		session.close();
		sf.close();
		return cus;

	}

	public int createcustomer(Customer cusobj) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		int cus = (Integer) session.save(cusobj);
		tx.commit();
		session.close();
		sf.close();
		return cus;

	}

	public Customer searchCustByID(int custID) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		Customer c = (Customer) s.get(Customer.class, custID);
		tx.commit();
		s.close();
		sf.close();
		return c;

	}
	public CustomerStatus searchCustomerStatusByID(int custID) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		CustomerStatus c = (CustomerStatus) s.get(CustomerStatus.class, custID);
		tx.commit();
		s.close();
		sf.close();
		return c;

	}
	public ArrayList<Customer> viewAllCustomers() {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from Customer c");
		ArrayList<Customer> cList = (ArrayList<Customer>) q.list();
		s.close();
		sf.close();
		return cList;

	}
	public ArrayList<CustomerStatus> viewAllCustomerStatus() {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from CustomerStatus c");
		ArrayList<CustomerStatus> cList = (ArrayList<CustomerStatus>) q.list();
		s.close();
		sf.close();
		return cList;

	}

	public void updateCustomer(Customer cust) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.update(cust);
		tx.commit();
		s.close();
		sf.close();

	}

	public void updateCustomerStatus(CustomerStatus cust) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.update(cust);
		tx.commit();
		s.close();
		sf.close();

	}
	public void deleteCustomer(Customer cust) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.delete(cust);
		tx.commit();
		s.close();
		sf.close();

	}
/*public void deleteCustomerStatus(CustomerStatus cust) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.delete(cust);
		tx.commit();
		s.close();
		sf.close();

	}*/

	public int createAccount(Account acc) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		int aid=(Integer) s.save(acc);
		tx.commit();
		s.close();
		sf.close();
		return aid;

	}
	public int createAccountStatus(AccountStatus acc)
	{
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		int account = (Integer) s.save(acc);
		tx.commit();
		s.close();
		sf.close();
		return account;

	}
	
	

	public Account searchAccByAccountId(int accountId) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		Account acc = (Account) s.get(Account.class, accountId);
		tx.commit();
		s.close();
		sf.close();
		return acc;

	}

	public ArrayList<Account> viewAllAccounts() {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Query q = s.createQuery("from Account a");
		ArrayList<Account> accList = (ArrayList<Account>) q.list();
		s.close();
		sf.close();
		return accList;
	}

	public void updateAccount(Account acc) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.update(acc);
		tx.commit();
		s.close();
		sf.close();

	}

	public void deleteAccount(Account acc) {
		Configuration cfg = new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf = cfg.buildSessionFactory();
		Session s = sf.openSession();
		Transaction tx = s.beginTransaction();
		s.delete(acc);
		tx.commit();
		s.close();
		sf.close();

	}

}
