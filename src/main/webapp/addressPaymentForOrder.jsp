<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<html>
<head>

<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<link rel="stylesheet" href="css/table-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Proceed</title>
<script>
if(window.history.forward(1)!=null)
	window.history.forward(1);
</script>
</head>
<body>
<br>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table class="table bg-white">
<thead>
	<%
	String email=session.getAttribute("email").toString();
	String orderid = session.getAttribute("orderid").toString();
	int total=0;
	int sno=0;
	try{
		Connection con=ConnectionProvider.getConn();
		Statement st=con.createStatement();
		ResultSet rs1=st.executeQuery("select sum(total)from cart where orderid='"+orderid+"'");
		while(rs1.next()){
			total=rs1.getInt(1);
		}
	%>
		<tr>
		<th scope="col"><a href="myCart.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></th>
		<th scope="col" style="background-color:yellow;">Total:<i class="fa fa-inr"></i><%out.println(total); %></th>
		</tr>
		</thead>
		<thead>
		<tr>
		
		<tr>
		<th scope="col">S.No</th>
		<th scope="col">Product Name</th>
		<th scope="col">Category</th>
		<th scope="col"><i class="fa fa-inr"></i>price</th>
		<th scope="col">Quantity</th>
		<th scope="col">Sub Total</th>
		</tr>
		</thead>
		<tbody>
		<%
      ResultSet rs=st.executeQuery("select*from product inner join cart on product.id=cart.product_id and cart.orderid='"+orderid+"'");
      while(rs.next())
      {
      %>
			<tr>
			<%sno=sno+1; %>
			<td data-title="S.No"><%out.println(sno); %></td>
			<td data-title="Product Name"><%=rs.getString(2) %></td>
			<td data-title="Category"><%=rs.getString(3) %></td>
			<td data-title="Price"><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
			<td data-title="Quantity"><%=rs.getString(8) %></td>
			<td data-title="Sub Total"><i class="fa fa-inr"></i><%=rs.getString(10) %></td>
			</tr>
			<%}
      	ResultSet rs2=st.executeQuery("select*from users where email='"+email+"'");
      	while(rs2.next()){
      		
      %>
		</tbody>
</table>
</div>
</section>
<hr style="width:100%">
<form action="addressPaymentForOrderAction.jsp" method="post">
<div class="left-div">
<h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%=rs2.getString(7) %>" placeholder="Enter address" required>
</div>

<div class="right-div">
<h3>Enter City</h3>
<input class="input-style" type="text" name="city" value="<%=rs2.getString(8) %>" placeholder="Enter city" required>
</div>

<div class="left-div">
<h3>Enter State</h3>
<input class="input-style" type="text" name="state" value="<%=rs2.getString(9) %>" placeholder="Enter state" required>
</div>

<div class="right-div">
<h3>Enter country</h3>
<input class="input-style" type="text" name="country" value="<%=rs2.getString(10) %>" placeholder="Enter country" required>
</div>


<div class="left-div">
<h3>Select way of payment</h3>
<select class="input-style" name="paymentMethod">
<option value="Cash on Delivery(COD)">Cash on Delivery(COD)</option>
<option value="Online payment">Online Payment</option>
</select>
</div>

<div class="right-div">
<h3>Pay online on this:fashionmart@pay.com</h3>
<input class="input-style" type="text" name="transactionId" placeholder="Enter transaction Id">
<h3 style="color:white">If you select online payment then enter your transaction ID here otherwise leave this blank</h3>
</div>
<hr style="width:100%">
<div class="left-div">
<h3>Mobile Number</h3>
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3) %>" placeholder="Enter mobile Number" required>

</div>
<div class="right-div">
<br>
<br>
<br>
<button class="button">Proceed to generate Bill and Save<i class='far fa-arrow-alt-circle-right'></i></button>

</div>
</form>
<%
      	}  
	}
	catch(Exception e){
		System.out.println(e);
	}
%>
<script src="js/bootstrap.min.js"></script>
</body>
</html>