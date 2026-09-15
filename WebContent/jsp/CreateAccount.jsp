<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Account</title>
</head>
<script>
function validateForm(){
	var cid=document.getElementById("cid").value;
	var dropdown=document.getElementById("dropdown").value;
	var damount=document.getElementById("damount").value;
	if(cid==""||cid==null)
	{
	alert("Please cid number");
	return false;
	}
	if(isNaN(cid))
	{
	alert("Please Enter cid in Number Format");
	return false;
	}
	if(dropdown=="Select")
		{
		alert("Please Select One Option");
		return false;
		}
	if(damount==""||damount==null)
	{
	alert("Please Deposit Amount number");
	return false;
	}
	if(isNaN(damount))
	{
	alert("Please Enter Deposit Amount in Number Format");
	return false;
	}
}
</script>
<style>
input[type=text], input[type=password] {
    width: 220px;
    padding: 12px 20px;
    margin: 6px 0;
    display:run-in;
    border: 2px solid #ccc;
    box-sizing:border-box;
}
button {
    background-color: #76a07c;
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
    padding: 6px;
  
    }
    #f1{
    border-color: blue;
    }
  
body{
background-image: url(".jpeg");
}
</style>
<body>
<div><img alt="logo" src="" style="width:250px;height:100px;">
</div>
<form action="<%=request.getContextPath() %>/CustomerController" style="border:3px solid gray " method="post">
<center><h1><b style="color:black">Create Account</b></h1>
<table>
<div class="container" align="center">
   <tr><td> <label><b>Customer ID</b></label></td>
    <td><input style="width:8cm;"type="text" placeholder="Enter Customer ID" id="cid" name="CustomerSSNID" ></td></tr>
    
   <tr><td> <label><b>Account Type</b></label></td>
    <td><select id="dropdown" style="width:8cm;height:1cm" name="AccountType">
    <option value="Select">Select</option>
    <option value="Saving">Saving Account</option>
    <option value="Current">Current Account</option>
    
    </select></td></tr>
   
  <tr><td>  <label><b>Deposit Amount</b></label></td>
    <td><input style="width:8cm;" type="text" placeholder="Enter Deposit Amount" id="damount" name="DepositAmount"></td></tr>
    </table>
    
      <button type="submit" class="cancelbtn" name="action"  value="accountregister" onclick="return validateForm()">Create</button>
       <button type="reset" class="reset" name="action" value="reset" >Reset</button>
       <button type="submit" class="cancel" name="action" value="cancel" >Cancel</button>
      
      </div>
       </center>
  </form>
  
</body>
</html>