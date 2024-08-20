
<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>

<html>
<head>
<link href="../css/table-style.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Orders Received</title>
<style>
.th-style
{ width: 25%;}

</style>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancelled Successfully!</h3>
<%} %>
<%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table id="customers">
<thead>
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
              <th scope="col">Status</th>
              <th scope="col">Cancel order <i class='fas fa-window-close'></i></th>
              <th scope="col">Order Delivered <i class='fas fa-dolly'></i></th>
          </tr>
          </thead>
        <%
        
        try{
        	Connection con=ConnectionProvider.getConn();
        	Statement st=con.createStatement();
        	ResultSet rs=st.executeQuery("select*from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='processing'");
        	while(rs.next())
        	{
        %>
       
          <tr>
          <td data-title="Mobile Number"><%=rs.getString(10) %></td>
            <td data-title="Product Name"><%=rs.getString(19) %></td>
            <td data-title="Quantity"><%=rs.getString(3) %></td>
            <td data-title="Sub Total"><i class="fa fa-inr"></i><%=rs.getString(5) %>  </td>
                <td data-title="Address"><%=rs.getString(6) %></td>
               <td data-title="City"><%=rs.getString(7) %></td>
                <td data-title="State"><%=rs.getString(8) %></td>
                 <td data-title="Country"><%=rs.getString(9) %></td>
             <td data-title="Order-Date"><%=rs.getString(11) %></td>
              <td data-title="Expected Delivery Date"><%=rs.getString(12) %></td>
               <td data-title="Payment Method"><%=rs.getString(13) %></td>
               <td data-title="T-ID"><%=rs.getString(14) %></td>
               <td data-title="Status"><%=rs.getString(15) %></td>
               <td data-title="Order Cancelled"><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&orderid=<%=rs.getString(17)%>">Cancel <i class='fas fa-window-close'></i></a></td>
                <td data-title="Order Delivered"><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&orderid=<%=rs.getString(17)%>">Delivered <i class='fas fa-dolly'></i></a></td>
            </tr>
         <% 
        }
        }catch(Exception e){
        	
        }
        %>
        </table>
      </div>
      </section>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>