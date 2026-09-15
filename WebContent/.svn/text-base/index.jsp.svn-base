<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>

<script type="text/javascript" src="js/index.js"></script> 
</head>


<style>
input[type=text], input[type=password] {
    width: 280px;
    padding: 12px 20px;
    margin: 8px 0;
    display:run-in;
    border: 2px solid #ccc;
    box-sizing:border-box;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100px;
}
button:hover {
	background-color:none;
	color: white;
}
.container {
    padding: 10px;
  
    }
    #f1{
    border-color: blue;
    }
    
	.topnav {
	overflow: hidden;
	background-color: none;
}
.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}
.topnav a:hover {
	background-color:none;
	color: white;
}
.topnav a.active {
	background-color: none;
	color: white;
}
body{
background-image: url("jsp/log1.jpg");
background-position: center;

}

</style>
<body>
<%
String n=(String)request.getAttribute("msg");
%>
<div><img alt="" src="<%=request.getContextPath() %>/jsp/l.png" style="width:250px;height:100px;">
</div>
<div class="topnav">
			<%-- <a href="<%=request.getContextPath() %>/index.jsp"><b id="w">Home</b></a> 
			<a href="<%=request.getContextPath() %>/"><b id="w">View</b></a> 
			<a href="<%=request.getContextPath() %>/jsp/about.jsp"><b id="w">About Us</b></a> --%>
			</div>
<center>
<form action="<%=request.getContextPath() %>/CustomerController" method="post"  >
 
   <center>
   <h1><b style="color:#1ececb">Login</b></h1>
</center>
<div class="container">

   <!--  <label><b style="color:white">Customer ID</b></label><br>-->
    <input style="width:6cm;" type="text"  name="username" id="uname" placeholder="Enter Username"></div><br>
    
  <!--     <label><b style="color:white">Password</b></label><br>-->
    <input style="width:6cm;"type="password"placeholder="Enter Password" name="password" id="pswd" ><br>
     <% if(n!=null){%>
<p style="color:red"><%=n %></p>
<%}%>
     <div >
      <button type="submit" class="button" name="action" value="login" onclick="return validateForm()">Login</button>
       <button type="reset" class="reset" value="reset">Reset</button>
    <!--   <button type="button" class="cancel" name="action" onclick="home()">Cancel</button> -->
    </div>

</form>
</center>
</body>
</html>