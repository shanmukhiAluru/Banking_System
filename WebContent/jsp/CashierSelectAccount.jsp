<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Account</title>
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
</style>
<body>
<div><img alt="logo" src="" style="width:250px;height:100px;">
</div>
<form action="" >
<center><h1><b style="color:#2a5763">Account Page</b></h1></center>
<div align="center">
 <label><b style="font-style: italic;">Select Account</b></label>
    <select style="width:6cm;height:0.56cm" name="AccountType">
    <option value="Select">Select</option>
    <option value="   ">            </option>
    <option value="   ">           </option>
    
    </select>
    </div>
   <div align="center">
       <button type="Submit" class="cancelbtn" name="action"  value="submit" onclick="return validateForm();">Submit</button>
       <button type="reset" class="reset" name="action" value="reset" >Reset</button>
    </div>


</form>
</body>
</html>