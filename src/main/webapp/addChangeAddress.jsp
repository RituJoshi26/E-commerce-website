<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or Change Address</title>
<style>
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
.card{
	font-weight: bold;
}
.card input{
	border-bottom: 2px solid black;
}
button[type="submit"]{
	border-radius: 10rem !important;
	width: 120px;
	background-color:#1c1c50;
    color:white;
    height:5vh;
	
}
</style>
</head>
<body>
<div class="container">
<div class="col-md-4">

<div class="card">
<div class="card-header text-center">
Change Address
</div>
<div class="card-body">
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h5 class="alert">Address Successfully Updated !</h5>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h5 class="alert">Some thing Went Wrong! Try Again!</h5>
<%} %>
<%
try
{
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from users where email='"+email+"'");
	while(rs.next())
	{
		
%>
<form  action="addChangeAddressAction.jsp" method="post">
  	<div class="mb-3 mt-3">
    	<label for="Address" class="form-label">Address:</label>
    	<input type="text" class="form-control" value="<%=rs.getString(7) %>"  placeholder="Enter address" name="address" required>
  	</div>
  	
  	<div class="mb-3">
    	<label for="City" class="form-label">City:</label>
    	<input type="text" class="form-control"  placeholder="Enter city" value="<%=rs.getString(8) %>" name="city" required>
  	</div>
  	<div class="mb-3">
    	<label for="State" class="form-label">State:</label>
    	<input type="text" class="form-control" placeholder="Enter State" value="<%=rs.getString(9) %>"name="state" required>
  	</div>
  	<div class="mb-3">
    	<label for="Country" class="form-label">Country:</label>
    	<input type="text" class="form-control" placeholder="Enter Country" value="<%=rs.getString(10) %>"name="country" required>
  	</div>
  	
  	<br>
  	<button type="submit" class="">Save</button>
</form>
</div>
</div>
</div>
</div>
</main>

 <%
 }
}
catch(Exception e)
{
	System.out.println(e);
}
 %>
 <script src="js/bootstrap.min.js"></script>
</body>
<br><br><br>
<br>
</html>