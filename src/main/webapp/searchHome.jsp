<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/table-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>

<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table class="table bg-white">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try{
	String search=request.getParameter("search");
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from product where name like'%"+search+"%' or category like '%"+search+"%' and  active='Yes'");
	while(rs.next())
	{
		z=1;
	
%>
          <tr>
            <td data-title="ID"><%=rs.getString(1) %></td>
            <td data-title="Name"><%=rs.getString(2) %></td>
            <td data-title="Category"><%=rs.getString(3) %></td>
            <td data-title="Price"><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
            <td data-title="Add to Cart"><a href="addToCartAction.jsp?id=<%=rs.getString(1)%>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
     <%
	}
}
catch(Exception e){
	System.out.println(e);
}
%>    
        </tbody>
      </table>
      	<%if(z==0){ %>
	<h5 style="color:black; text-align: center;">Nothing to show</h5>
	<%} %>
	
      </div>
      </section>
      
      
<script src="js/bootstrap.min.js"></script>
</body>
</html>