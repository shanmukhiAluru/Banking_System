<%@page import="bean.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update confirmation</title>
</head>
<script type="text/javascript" src="js/createcustomer.js"></script> 


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
background-image: url(".jpg");
}


</style>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>  
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
</div>

<form action="<%=request.getContextPath()%>/CustomerController" style="border:3px solid gray " method="post">
<%Customer c=(Customer)request.getAttribute("customer"); %>
<center><h1><b style="color:black">Update Customer</b></h1>
<table>
<div class="container" align="center">
<tr><td><label><b>Customer ID</b></label></td>
    <td><input style="width:6cm;"type="text" name="custId" value="<%=c.getCustId()%>"readonly></td></tr>

   <tr><td><label><b>Customer SSNID</b></label></td>
    <td><input style="width:6cm;"type="text" name="ssnId" value="<%=c.getSsnId()%>"readonly></td></tr>

    <tr><td><label><b>Customer Name</b></label></td>
    <td><input style="width:6cm;" type="text"  name="custName"  value="<%=c.getCustName()%>"></td></tr>
    
    
   <tr><td> <label><b>Age</b></label></td>
   <td> <input style="width:6cm;" type="text" name="age" value="<%=c.getAge()%>"></td></tr>
  
 <tr><td> <label><b>Address Line1</b></label></td>
   <td> <input style="width:6cm;" type="text" name="add_line1" value="<%=c.getAdd_line1()%>"></td></tr>
  
  <tr><td><label><b>Address Line2</b></label></td>
   <td> <input style="width:6cm;" type="text" name="add_line2" value="<%=c.getAdd_line1()%>"></td></tr>
   
  <tr><td> <label><b>City</b></label></td>
   <td> <input style="width:6cm;" type="text" name="city" value="<%=c.getCity()%>"></td></tr>
     
   <tr> <td> <label><b>State</b></label></td>
   <td> <input style="width:6cm;" type="text" name="state"value="<%=c.getState()%>" ></td></tr>
    
  
<!-- <tr><td> <label><b>Pincode</b></label></td>
   <td> <input style="width: 220px;height:1cm;;padding:12px 10px; border: 2px solid #ccc;
    box-sizing:border-box;" type="pincode" placeholder="Enter Pincode" id="pin" name="pincode" ></td></tr> -->
   
   
   </table>
   
    
     <button type="submit" class="cancelbtn" name="action"  value="update" onclick="return validateForm()">Update</button>&nbsp;&nbsp;
     <button type="reset" class="reset" value="reset" >Reset</button>&nbsp;&nbsp;
     <button type="button" class="cancel"  onclick="home()" >Cancel</button>
    
    

		
  
  </div>

</center>
</form>
</body>
</html>