<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/table-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<style>
a{
 text-decoration:none;
}
td a b{
 padding-right:8px;
 padding-left:8px;
 padding-top:0px;
 padding-bottom:0px;
 color:black;
 font-size:1em;
 color:blue;
}

h5{
	color:black;
	text-align:center;
}
.navbar-brand{
	margin-right:70px;
}
.nav-link{
	font-size: 20px;
	margin-right:50px;
}
.nav-link:hover{
	text-decoration:underline;
}
</style>
</head>
<body>
<%String email=session.getAttribute("email").toString();
String orderid=session.getAttribute("orderid").toString();
%>
<%
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
<nav class="navbar navbar-expand-lg" id="navbar">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.html"><img src="./images/logo.png" alt="" width="180px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><i class="fa-solid fa-bars" style="color: white;"></i></span>
              </button>
             
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                  </li>
                  
                  <li class="nav-item">
                    <a class="nav-link" href="myCart.jsp">My Cart</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="myOrders.jsp">My Orders</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="messageUs.jsp">Message Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="changeDetails.jsp">Change Details</a>
                  </li>
                  <li class="nav-item">
                   <%if(total>0){ %> <a class="nav-link" href="addressPaymentForOrder.jsp">Proceed to Order</a><%} %>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">Logout</a>
                  </li>
                  
                </ul>
                </div>
              </div>
            </div>
          </nav>
             
<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<h5 class="alert">There is only one Quantity! So click on remove!</h5>
<%} %>
<%
if("inc".equals(msg))
{
%>
<h5 class="alert">Quantity  Increased Successfully!</h5>
<%} %>
<%
if("dec".equals(msg))
{
%>
<h5 class="alert">Quantity  Decreased Successfully!</h5>
<%} %>
<% 
if("removed".equals(msg))
{
	%>
}
<h5 class="alert">Product Successfully Removed!</h5>
<%} %>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table class="table bg-white">
<thead>

          <tr>
            <th scope="col" style="background-color: yellow;">Total: <i class="fa fa-inr"></i> <%out.println(total); %></th>
            <%if(total>0){ %><th scope="col"><a href="addressPaymentForOrder.jsp">Proceed to order</a></th><%} %>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
      ResultSet rs=st.executeQuery("select*from product inner join cart on product.id=cart.product_id and cart.orderid='"+orderid+"' and cart.status is NULL");
      while(rs.next())
      {
      %>
          <tr>
		<%sno=sno+1; %>
           <td data-title="S.No"><%out.println(sno); %></td>
            <td data-title="Product Name"><%=rs.getString(2) %></td>
            <td data-title="Category"><%=rs.getString(3) %></td>
            <td data-title="Price"><i class="fa fa-inr"></i><%=rs.getString(4) %> </td>
            <td data-title="Quantity"><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><b>+</b></a> <%=rs.getString(8) %> <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><b>-</b></a></td>
            <td data-title="Sub Total"><i class="fa fa-inr"></i><%=rs.getString(10) %> </td>
            <td data-title="Remove"><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>
<%
      }

}
catch(Exception e){
	
}
%>
        </tbody>
      </table>
     </div>
     </section>
      
<script src="js/bootstrap.min.js"></script>
</body>
</html>