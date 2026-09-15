<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
    border-collapse:separate;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 12px;
}

tr:nth-child(even){background-color: #dcd3ea}

th {
    background-color: #32b0d3;
    color: white;
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
</style>
<body>
<center><h1><b style="color:#2e443c">Delete Account</b></h1></center>



<form action="">
<table border="2">
<tr>
<th>Customer SSN ID or Customer ID</th>
<th>Account Type</th>
<th>Deposit Amount</th>

</tr>

<tr>
<th>     </th>
<th>     </th>
<th>     </th>
</tr>


</table>
<div align="center">
<button class="submit" type="button" value=" " 
onclick="window.location.href='Admin.jsp'" />Delete
</div>
</form>
</body>
</html>