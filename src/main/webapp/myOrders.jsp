
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/table-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Orders</title>
</head>
<body>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table class="table bg-white">
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">category</th>
            <th scope="col"><i class="fa fa-inr"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try{
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next())
	{
		sno=sno+1;
%>
          <tr>
            <td data-title="S.No"><%out.println(sno); %></td>
            <td data-title="Product Name"><%=rs.getString(19) %></td>
            <td data-title="Category"><%=rs.getString(20) %></td>
            <td data-title="Price"><i class="fa fa-inr"></i><%=rs.getString(21) %> </td>
            <td data-title="Quantity"><%=rs.getString(3) %></td>
            <td data-title="Sub Total"><i class="fa fa-inr"></i><%=rs.getString(5) %> </td>
             <td data-title="Order Date"><%=rs.getString(11) %></td>
              <td data-title="Expected Delivery Date"><%=rs.getString(12) %></td>
               <td data-title="Payment Method"><%=rs.getString(13) %></td>
               <td data-title="Status"><%=rs.getString(15) %></td>
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
      <br>
      <br>
      <br>
<script src="js/bootstrap.min.js"></script>
</body>
</html>