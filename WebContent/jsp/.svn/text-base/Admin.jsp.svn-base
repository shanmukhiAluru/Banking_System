<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin home</title>
</head>
<body>
<style>

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:black;
}

li {
    float: left;
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
//dropdown...................


li a, .dropbtn {
    display: inline-block;
    color:lightblue;
    text-align: center;
    padding: 16px 8px;
  
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:#ddd;
    min-width: 160px;
    box-shadow: 0px 18px 16px 10px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color:black;
    padding: 15px 10px;
    text-decoration:none;
    display:block;
    text-align: left;
}
.dropdown-content a:hover {

color:white;
background-color: #4c4c4c;
}
.dropdown:hover .dropdown-content {

    display: block;
}
/* body{
background-image: url("jsp/logo1.jpg");
} */
.container{
height: 250px;

}
body{
background-image: url("jsp/log1.jpg");
background-position: center;

}

</style>
<img alt="logo" src="<%=request.getContextPath() %>/jsp/l.png" style="width:220px;height:65px;">

<body bgcolor="white">

<form action="<%=request.getContextPath()%>/CustomerController" method="post">
<%String s=(String)request.getAttribute("username"); %>
<center><h4 align="right" > <font color="#FFFFFF">welcome <%=request.getSession().getAttribute("username")%>(Admin)<br><a href="<%=request.getContextPath()%>/CustomerController?action=index">logout</a></font></h4></center>

<ul>
  <li><a href="<%=request.getContextPath()%>/Admin.jsp"><b id="w">Home</b></a></li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><b id="w">Customer</b></a>
    <div class="dropdown-content">
      <a href="jsp/CreateCustomer.jsp"><b>Create Customer</b></a>
      <a href="<%=request.getContextPath()%>/CustomerController?action=update_searchId"><b>Update Customer</b></a>
      <a href="<%=request.getContextPath()%>/CustomerController?action=delete_searchId"><b>Delete Customer</b></a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><b id="w">Account</b></a>
    <div class="dropdown-content">
     
       <a href="<%=request.getContextPath()%>/CustomerController?action=create_Account"><b>Create Account</b></a>
       <a href="<%=request.getContextPath()%>/CustomerController?action=delete_Account"><b>Delete Account</b></a>
      
    </div>
  </li>
<li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn"><b id="w">View</b></a>
    <div class="dropdown-content">
      <a href="<%=request.getContextPath()%>/CustomerController?action=view_cust"><b>Customer Status</b></a>
      <a href="#"><b>Account Status</b></a>
    </div>
  </li>  
 <!--  <li><a href="#about"><b>AboutUs</b></a></li> -->
</ul>

<%String msg=(String)request.getAttribute("message"); %>
<%if(msg!=null){ %>
<h3 align="right"><font color=red><%=s %></font></h3>

<%} %>

</form>


</body>
</html>