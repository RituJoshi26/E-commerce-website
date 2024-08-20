<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
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
<main>

<div class="container">
<div class="col-md-4">

<div class="card">
<div class="card-header text-center">
Change Security Question
</div>
<div class="card-body">
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%}%>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form  action="changeSecurityQuestionAction.jsp" method="post">
  	<div class="mb-3 mt-3">
  	Select your new Security Question:
    	<select class="form-select" name="securityQuestion"aria-label="New Security Question">
    	<option value="What was your first car?">What was your first car?</option>
    	<option value="What is the name of your first pet?">What is the name of your first pet?</option>
    	<option value="What is the name of your town?">What is the name of your town?</option>
    	</select>
    	
  	</div>
  	
  	<div class="mb-3">
    	<label for="New Answer" class="form-label">New Answer:</label>
    	<input type="text" class="form-control"  placeholder="Enter your new answer" name="newAnswer" required>
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
</main>
<script src="js/bootstrap.min.js"></script>
</body>
<br><br><br>
</html>