<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Customer</title>
</head>
<!-- <script type="text/javascript" src="js/createcustomer.js"></script>  -->

<script>
function validateForm1(){
var ssnid=document.getElementById("ssnid").value;
var cname=document.getElementById("cname").value;
var age=document.getElementById("age").value;
var addline1=document.getElementById("addline1").value;
var addline2=document.getElementById("addline2").value;
var city=document.getElementById("city").value;
var state=document.getElementById("state").value;

if(ssnid==""||ssnid==null)
	{
	alert("Please SSNID number");
	return false;
	}
	if(isNaN(ssnid))
		{
		alert("Please Enter SSNID in Number Format");
		return false;
		}
if(cname==""||cname==null)
	{
	alert("Please Enter Customer Name");
	return false;
	}
	if(!(isNaN(cname)))
		{
		alert("please Enter Customer Name in String Format");
		return false;
		}
if(age==""||age==null)
	{
	alert("Please Enter Age");
	return false;
	}
if(isNaN(age))
{
alert("Please Enter age in Number Format");
return false;
}
if(age<0 || age>150)
	{
	alert("please Enter a valid Age Between 1 to 150");
	return false;
	}
if(addline1==""||addline1==null)
	{
	alert("Please Enter Address1");
	return false;
	}
if(addline2==""||addline2==null)
	{
	alert("Please Enter Address2");
	return false;
	}
if(city==""||city==null)
	{
	alert("Please Enter City");
	return false;
	}
if(state==""||state==null)
	{
	alert("Please Enter A State");
	return false;
	}
}
</script>



<style>
input[type=text], input[type=password] {
    width: 180px;
    height:1cm;
    padding: 12px 20px;
    margin: 6px 0;
    display:run-in;
    border: 2px solid #ccc;
    box-sizing:border-box;
}
button {
    background-color:  #76a07c;
    color: white;
    padding: 12px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100px;
}
button:hover {
	background-color:yellow;
	color: white;
}
.container {
    padding: 6px;
  
    }
    #f1{
    border-color: blue;
    }
body{
background-image: url(".jpg");
}


</style>
<script src="js/createcustomer.js"></script>  
    <script>
    $(function(){															 // this will be called when the DOM is ready
    	  $('#pin').keyup(function() {
    		  var el = $(this);
			  if (el.val().length == 6) {
			    $.ajax({													 // Call Ziptastic for information
    		      url: "https://zip.getziptastic.com/v2/IN/" + el.val(),
    		      cache: false,
    		      dataType: "json",
    		      type: "GET",
    		      success: function(result, success) {
    		        $("#city").val(result.city);
    		        $("#state").val(result.state);
	   		      },
    		      error: function(result, success) {
   		    	  alert("not found");
    		      }
	   		    });
				} else if (el.val().length < 5) {
			    $(".zip-error").slideUp(200);
    		  };
    	  });
    	});
     </script>
<body>       
<div><img alt="logo" src="logo1.png" style="width:250px;height:100px;">
<%String s=(String)request.getAttribute("username"); %>
<center><h4 align="right"> welcome <%=request.getSession().getAttribute("username")%>(Admin)<br><a href="<%=request.getContextPath()%>/CustomerController?action=index">logout</a></h4></center>
</div>

<form action="<%=request.getContextPath()%>/CustomerController" method="post" >
<%String s1=(String)request.getAttribute("msg"); %>

<center><h1><b style="color:black">Customer Registration</b></h1>
<table>
<div class="container" align="center">
   <tr><td><label><b>Customer SSNID</b></label></td>
    <td><input style="width:6cm;"type="text" placeholder="Enter SSN ID" name="ssnId" id="ssnid"></td><td><%if(s1!=null){%>
    <font color="red"><%=s1 %></font><%} %></td></tr>
 

    <tr><td><label><b>Customer Name</b></label></td>
    <td><input style="width:6cm;" type="text" placeholder="Enter Customer Name" name="custName" id="cname"></td></tr>
    
    
   <tr><td> <label><b>Age</b></label></td>
   <td> <input style="width:6cm;" type="text" placeholder="Enter Age" name="age" id="age"></td></tr>
  
 <tr><td> <label><b>Address Line1</b></label></td>
   <td> <input style="width:6cm;" type="text" placeholder="Enter Address Line1" name="add_line1" id="addline1" ></td></tr>
  
  <tr><td><label><b>Address Line2</b></label></td>
   <td> <input style="width:6cm;" type="text" placeholder="Enter Address Line2" name="add_line2" id="addline2"></td></tr>
  
  
<!-- <tr><td> <label><b>Pincode</b></label></td>
   <td> <input style="width: 220px;height:1cm;;padding:12px 10px; border: 2px solid #ccc;
    box-sizing:border-box;" type="pincode" placeholder="Enter Pincode" id="pin" name="pincode" ></td></tr> -->
   
   <tr><td> <label><b>City</b></label></td>
   <td> <input style="width:6cm;" type="text" placeholder="Enter City" id="city" name="city" ></td></tr>
     
   <tr> <td> <label><b>State</b></label></td>
   <td> <input style="width:6cm;" type="text" placeholder="Enter State" id="state" name="state" ></td></tr>
    
   </table>
   
         <button type="submit" class="cancelbtn" name="action"  value="register" onclick="return validateForm1()">Register</button>&nbsp;&nbsp;
         <button type="reset" class="reset" value="reset" >Reset</button>&nbsp;&nbsp;
         <button type="submit" class="cancel"  name="action" value="cancel" >Cancel</button>
    
    

		
  
  </div>

</center>
</form>
</body>
</html>