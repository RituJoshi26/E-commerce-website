<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/table-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h5
{
	color: black;
	text-align: center;
}
</style>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("added".equals(msg)){
%>
<h5 class="alert">Product added successfully!</h5>
<%} %>
<%
if("exist".equals(msg)){
%>
<h5 class="alert">Product already exist in you cart! Quantity  increased!</h5>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h5 class="alert">Something went wrong!Try Again</h5>
<%} %>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table class="table bg-white">
<thead>
<tr>
<th hidden scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fa fa-cart-plus'></i></th>
</tr>
</thead>
<tbody>
<%
try{
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from product where active='Yes'");
	while(rs.next())
	{
		
	
%>
<tr>
 <td hidden><%=rs.getString(1) %></td>
            <td data-title="Name"><%=rs.getString(2) %></td>
            <td data-title="Category"><%=rs.getString(3) %></td>
            <td data-title="price"><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
            <td data-title="Add to cart"><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fa fa-cart-plus'></i></a></td>
</tr>
<%
	}
}
catch(Exception e){
	System.out.println(e);
}
%>
</tbody>
</table>
</div>
</section>

<script src="js/bootstrap.min.js"></script>
</body>
</html>