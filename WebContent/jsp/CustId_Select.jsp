<%@page import="java.util.ArrayList"%>
<%@page import="bean.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get by ID</title>
</head>
<style>
button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100px;
}
 ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:#6c6070;
}

li {
    float: right;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #595252;
}

.active {
    background-color: none;
}
#w.sansserif {
    font-family: Arial;
  
}
</style>
<body>

<div><img alt="logo" src="logo1.png" style="width:250px;height:100px;">
</div>
<div>
<ul>
<%String s=(String)request.getAttribute("username"); %>
  <li><a href="<%=request.getContextPath() %>/jsp/index.jsp     "><b>Logout</b></a></li>
  <li><a href=""><b>Welcome <%=request.getSession().getAttribute("username")%> (Admin)</b></a></li>
  
  </ul>
</div>
<form action="<%=request.getContextPath() %>/CustomerController" method="post" >
<%ArrayList<Customer> cList=(ArrayList<Customer>)request.getAttribute("cList"); %>
<center><h1><b style="color:#2a5763">Get By ID</b></h1></center>
<div align="center">

 <label><b style="font-style: italic;">Select Customer ID</b></label>
<%if(cList!=null){ %>

			<select style="width: 6cm; height: 0.56cm" name="customerid">
				<option value="Select">Select</option>
				<%for(Customer c:cList){ %>
				<option><%=c.getCustId() %></option>
					<%} %>
			</select>
		
			<%} %>
    </div>
   <div align="center">
       <button type="submit" class="button" name="action"  value="ser_delete" onclick="    ">Submit</button>
           <button type="button" class="button" name="action" onclick="window.location.href='Admin_Home.jsp'" >Cancel</button>
    
    </div>


</form>
</body>
</html>