<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<style>
h3{
font-weight: bold;


}

.left-div input{
	font-weight: bold;
}
.right-div input{
	font-weight: bold;
}
</style>
<title>Add New Product</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<center><h5 class="alert">Product Added Successfully!</h5></center>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<center><h5 class="alert">Some thing went wrong! Try Again!</h5></center>
<%} %>
<%
int id=1;
try{
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from product");
	while(rs.next()){
		id=rs.getInt(1);
		id=id+1;
	}
}catch(Exception e){
	
}
%>
<form action="addNewProductAction.jsp" method="post">
<h3 style="color: black;">Product ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter name" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style" type="number" name="price" placeholder="Enter price" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
  <select class="input-style" name="active">
  <option value="Yes">Yes</option>
  <option value="No">No</option>
  </select> 
<hr>
</div>
<button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>