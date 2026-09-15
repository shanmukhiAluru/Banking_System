package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;

import bean.Account;
import bean.AccountStatus;
import bean.Customer;
import bean.CustomerStatus;
import bean.login;

import service.CustomerService;

/**
 * Servlet implementation class CustomerController
 */
public class CustomerController extends HttpServlet {
	RequestDispatcher rd=null;
	private static final long serialVersionUID = 1L;


	public CustomerController() {

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doPost(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action=request.getParameter("action");
	 

		CustomerService cs=new CustomerService();
		if(action.equalsIgnoreCase("index"))
		{
			response.sendRedirect("index.jsp");
		}
		else if(action.equals("login"))
		{
			String name=request.getParameter("username");
			String pswd=request.getParameter("password");


			login l=cs.userLogin(name, pswd);
        if(l==null)
        {
	       
        	request.setAttribute("msg", "UserName or Password is Invalid");
        	rd=request.getRequestDispatcher("index.jsp");
        	rd.forward(request,response);
        }
        else if(l.getRole().equals("admin"))
			{
				
				//System.out.println(name);
				HttpSession s=request.getSession();
				s.setAttribute("username",name);
				RequestDispatcher rd=request.getRequestDispatcher("jsp/Admin.jsp");
				rd.forward(request, response);

			}
		
			else if(l.getRole().equals("cashier"))
			{
				RequestDispatcher rd=request.getRequestDispatcher("jsp/homeCashier.jsp");
				rd.forward(request, response);
			}
			/*else
			{
				String msg="Invalid username or password";
				request.setAttribute("message", msg);
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}*/



		}		 
		else if(action.equalsIgnoreCase("register"))
		{     
			System.out.println("aaaaaa");
			Customer c=new Customer();
			String name=request.getParameter("custName");
			c.setCustName(name);
			int x=cs.validssn(Integer.parseInt(request.getParameter("ssnId")));
			if(x>0)
			{   String s="ssnId is aldready Exist";
				request.setAttribute("msg",s);
				rd=request.getRequestDispatcher("jsp/CreateCustomer.jsp");
				rd.forward(request,response);
			}
			int ssnId=Integer.parseInt(request.getParameter("ssnId"));
			c.setSsnId(ssnId);
			
			
			
			c.setAge(Integer.parseInt(request.getParameter("age")));
			c.setAdd_line1(request.getParameter("add_line1"));
			c.setAdd_line2(request.getParameter("add_line2"));
			c.setCity(request.getParameter("city"));
			c.setState(request.getParameter("state"));



			int  cus=cs.createcustomer(c);
			if(cus>0)	
			{  
				DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.DATE, 1);
				cal.add(Calendar.HOUR, 2);
				cal.add(Calendar.MINUTE, 3);
				cal.add(Calendar.SECOND, 4);
				System.out.println(cal);
				//				 
				String lastUpdate = dateFormat.format(cal.getTime());

				CustomerStatus custStatus=new CustomerStatus(ssnId, cus, "inactive", "Customer creation initiated successfully", lastUpdate);
				cs.createcustomerStatus(custStatus);
				request.setAttribute("cusid", cus);
				/*response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<body><center><h3>Customer creation initiated successfully</h3></center></body>")*/;
				String s="Customer creation initiated successfully with CustomerId     "+cus;
				request.setAttribute("message", s);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.include(request,response);

			}
			else
			{

				String s="Customer creation failed";
				request.setAttribute("message", s);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.forward(request,response);

			}

		}
		else if (action.equalsIgnoreCase("update_searchId"))
		{
			ArrayList<Customer> cList=cs.viewAllCustomers();
			request.setAttribute("cList",cList );
			rd= request.getRequestDispatcher("jsp/Admin_Get_By_Id.jsp");
			rd.include(request,response);

		}
		else if(action.equalsIgnoreCase("ser_update"))
		{
			String s=request.getParameter("customerid");
			int a=Integer.parseInt(s);
			Customer c=(Customer)cs.searchCustByID(a);
			request.setAttribute("customer", c);
			rd= request.getRequestDispatcher("jsp/UpdateConfirm.jsp");
			rd.forward(request, response);
		}
		else if(action.equalsIgnoreCase("update"))
		{
			Customer c=new Customer();

			int custid=Integer.parseInt(request.getParameter("custId"));
			c.setCustId(custid);
			String name=request.getParameter("custName");
			c.setCustName(name);
			int ssnId=Integer.parseInt(request.getParameter("ssnId"));
			c.setSsnId(ssnId);
			c.setAge(Integer.parseInt(request.getParameter("age")));
			c.setAdd_line1(request.getParameter("add_line1"));
			c.setAdd_line2(request.getParameter("add_line2"));
			c.setCity(request.getParameter("city"));
			c.setState(request.getParameter("state"));



			int  cus=cs.updateCustomer(c);
			if(cus>0)	
			{  
				DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.DATE, 1);
				cal.add(Calendar.HOUR, 2);
				cal.add(Calendar.MINUTE, 3);
				cal.add(Calendar.SECOND, 4);
				System.out.println(cal);
				//				 
				String lastUpdate = dateFormat.format(cal.getTime());

				CustomerStatus custStatus=new CustomerStatus(ssnId, custid, "active", "Customer details Updated successfully", lastUpdate);
				cs.updateCustomerStatus(custStatus);
				request.setAttribute("cusid", cus);
				/*response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<body><center><h3>customer details updated successfully</h3></center></body>");*/

				String s="Customer update initiated successfully";
				request.setAttribute("message", s);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.include(request,response);

			}
			else
			{

				String s="Customer details updation failed";
				request.setAttribute("message", s);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.forward(request,response);

			}


		}
		else if (action.equalsIgnoreCase("delete_searchId"))
		{
			ArrayList<Customer> cList=cs.viewAllCustomers();
			request.setAttribute("cList",cList );
			rd= request.getRequestDispatcher("jsp/CustId_Select.jsp");
			rd.include(request,response);

		}
		else if(action.equalsIgnoreCase("ser_delete"))
		{
			String s=request.getParameter("customerid");
			int a=Integer.parseInt(s);
			Customer c=(Customer)cs.searchCustByID(a);
			request.setAttribute("customer", c);
			rd= request.getRequestDispatcher("jsp/DeleteCustomer.jsp");
			rd.forward(request, response);
		}
		else if(action.equalsIgnoreCase("delete"))
		{
			Customer c1=new Customer();

			int custid=Integer.parseInt(request.getParameter("custId"));
			c1.setCustId(custid);
			String name=request.getParameter("custName");
			c1.setCustName(name);
			int ssnId=Integer.parseInt(request.getParameter("ssnId"));
			c1.setSsnId(ssnId);
			c1.setAge(Integer.parseInt(request.getParameter("age")));
			c1.setAdd_line1(request.getParameter("add_line1"));
			c1.setAdd_line2(request.getParameter("add_line2"));
			c1.setCity(request.getParameter("city"));
			c1.setState(request.getParameter("state"));



			int  cus=cs.deleteCustomer(c1);
			if(cus>0)	
			{  
				DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.DATE, 1);
				cal.add(Calendar.HOUR, 2);
				cal.add(Calendar.MINUTE, 3);
				cal.add(Calendar.SECOND, 4);
				System.out.println(cal);
							 
				String lastUpdate = dateFormat.format(cal.getTime());

				CustomerStatus custStatus=new CustomerStatus(ssnId, custid, "inactive", "Customer details deleted", lastUpdate);
				cs.updateCustomerStatus(custStatus);
				request.setAttribute("cusid", cus);
				/*response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<body><center><h3>customer details deleted successfully</h3></center></body>");*/
				String s="Customer deleted successfully";
				request.setAttribute("message", s);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.include(request,response);

			}
			else
			{

				String s1="Customer details deletion failed";
				request.setAttribute("message", s1);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.forward(request,response);

			}


		}
		
		else if(action.equalsIgnoreCase("view_cust"))
		{
			System.out.println("Hai");
			
			ArrayList<CustomerStatus> statusList=cs.viewAllCustomerStatus();
			
			request.setAttribute("statusList",statusList );
			rd= request.getRequestDispatcher("jsp/ViewCustomer.jsp");
			rd.forward(request,response);
			
		}
		else if(action.equalsIgnoreCase("refresh"))
		{
			ArrayList<CustomerStatus> statusList=cs.viewAllCustomerStatus();
			request.setAttribute("statusList",statusList );
			rd= request.getRequestDispatcher("jsp/ViewCustomer.jsp");
			rd.forward(request,response);

		}
		//===================Account operations=========================
		else if(action.equalsIgnoreCase("create_Account"))
		{
			rd=request.getRequestDispatcher("jsp/CreateAccount.jsp");
			rd.forward(request, response);
		}
		else if (action.equalsIgnoreCase("delete_Account"))
		{
			rd=request.getRequestDispatcher("jsp/DeleteAccount.jsp");
			rd.forward(request, response);
			
		}
		else if(action.equalsIgnoreCase("cancel"))
		{
			rd=request.getRequestDispatcher("jsp/Admin.jsp");
			rd.forward(request, response);
		}
		else if(action.equalsIgnoreCase("accountregister"))
		{   Account a=new Account();
		int custId=Integer.parseInt(request.getParameter("CustomerSSNID"));
			a.setAccountId(custId);
			String accountType=request.getParameter("AccountType");
			a.setAccountType(accountType);
			a.setDepositAmount(Integer.parseInt(request.getParameter("DepositAmount")));
			int cid=Integer.parseInt(request.getParameter("CustomerSSNID"));
			int result=cs.createAccount(a,cid);
			if(result>0)
			{   
				DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				cal.add(Calendar.DATE, 1);
				cal.add(Calendar.HOUR, 2);
				cal.add(Calendar.MINUTE, 3);
				cal.add(Calendar.SECOND, 4);
				System.out.println(cal);
				//				 
				String lastUpdate = dateFormat.format(cal.getTime());

				//CustomerStatus custStatus=new CustomerStatus(ssnId, cus, "inactive", "Customer creation initiated successfully", lastUpdate);
				AccountStatus accStat=new AccountStatus(custId, result, accountType, "active", "Account creation initiated successfully", lastUpdate);
				cs.createAccountStatus(accStat);
				
				String s="Account creation initiated successfully with CustomerId     ";
				request.setAttribute("message", s);

				rd= request.getRequestDispatcher("jsp/Admin.jsp");
				rd.include(request,response);
				
				String s1="Account Added Successfully";
			    request.setAttribute("message",s1);
				rd=request.getRequestDispatcher("jsp/Admin.jsp");
				rd.forward(request, response);
			}
			else
			{
				String s="Failed To Add Account Please Try Again";
				request.setAttribute("message",s);
				rd=request.getRequestDispatcher("jsp/Admin.jsp");
				rd.forward(request, response);
			}
			
		
			
		}
		//else if()
	}

}


