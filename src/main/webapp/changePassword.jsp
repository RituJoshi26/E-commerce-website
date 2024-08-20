<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Password</title>
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

input[type=checkbox]{
	border: 2px solid black;
}
input[type=radio]{
	border:2px solid black;
}
#textbox{
	border:2px solid black;
}

button[type="submit"]{
	border-radius: 10rem !important;
	width: 120px;
	background-color:#1c1c50;
    color:white;
    height:5vh;
	
}

#success{
	color:green;
}
#wrong{
	color:red;
}

</style>
</head>
<body>
<main>

<div class="container">
<div class="col-md-4">

<div class="card">
<div class="card-header text-center">
Change Password
</div>
<div class="card-body">
<%
String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%} %>
<%
if("done".equals(msg))
{
%>

<h3 class="alert">Password changed successfully!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form  action="changePasswordAction.jsp" method="post">
  	<div class="mb-3 mt-3">
    	<label for="new Password" class="form-label">Old Password:</label>
    	<input type="password" class="form-control"  placeholder="Enter old password" name="oldPassword" required>
  	</div>
  	
  	<div class="mb-3">
    	<label for="New Password" class="form-label">New Password:</label>
    	<input type="password" class="form-control"  placeholder="Enter new Password" name="newPassword" required>
  	</div>
  	<div class="mb-3">
    	<label for="Confirm Password" class="form-label">Confirm Password</label>
    	<input type="password" class="form-control" placeholder="Enter Confirm Password" name="confirmPassword" required>
  	</div>
  	
  	<br>
  	<button type="submit" class="">Save</button>
</form>
</div>
</div>
</div>
</div>
</main>
<script src="js/bootstrap.min.js"></script>
</body>
<br><br><br>
</html>