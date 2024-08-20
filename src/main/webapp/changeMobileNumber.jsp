<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>

<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
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
h3{
	color:black;
}
</style>
</head>
<body>
<div class="container">
<div class="col-md-4">

<div class="card">
<div class="card-header text-center">
Change Mobile Number
</div>
<div class="card-body">
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h5 class="alert">Your Mobile Number successfully changed!</h5>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h5 class="alert">Your Password is wrong!</h5>
<%} %>
<form  action="changeMobileNumberAction.jsp" method="post">
  	<div class="mb-3 mt-3">
    	<label for="New Mobile Number" class="form-label">New Mobile Number:</label>
    	<input type="number" class="form-control"  placeholder="Enter your new mobile number" name="mobileNumber" required>
  	</div>
  	
  	<div class="mb-3">
    	<label for="Password" class="form-label">Password:</label>
    	<input type="password" class="form-control" placeholder="Enter your password(for Security)" name="password" required>
  	</div>
  	
  	<br>
  	<button type="submit" class="">Save</button>
</form>
</div>
</div>
</div>
</div>

<script src="js/bootstrap.min.js"></script>
</body>
<br><br><br>
</html>