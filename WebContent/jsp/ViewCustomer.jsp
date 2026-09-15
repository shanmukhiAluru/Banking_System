<%@page import="bean.CustomerStatus"%>
<%@page import="java.util.ArrayList"%>
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
    border-collapse:inherit;
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

</style>
<body>
<center><h1><b style="color:#2e443c">View Customer Status</b></h1></center>
<form action="<%=request.getContextPath()%>/CustomerController" method="post">
<table border="2" >
<%ArrayList<CustomerStatus> statList=(ArrayList<CustomerStatus>)request.getAttribute("statusList");%>
<tr>
<th>Customer ID</th>
<th>Status</th>
<th>Message</th>
<th>Last Updated</th>
<th></th>

</tr>
<%if(statList!=null){%>
<%for(CustomerStatus c:statList) { %> 

<tr>
<td><%=c.getCustId() %></td>
<td> <%=c.getStatus() %>    </td>
<td> <%=c.getMessage() %>    </td>
<td> <%=c.getLastUpdate() %>    </td>
<td> <input type="submit" class="cancelbtn" name="action" value="refresh">    </td>

</tr>
<%} }%>

</table>

</form>
</body>
</html>