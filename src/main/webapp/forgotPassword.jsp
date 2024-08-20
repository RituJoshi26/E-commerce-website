<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<title>ForgotPassword</title>
<style>
*{
	padding:0;
	margin:0;
	box-sizing:border-box;
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
body{
	padding:0;
	margin:0;
	font-family: sans-serif;
}
.row{
	border-radius: 30px;
}
img{
	border-top-left-radius: 30px;
	border-bottom-left-radius: 30px;
}

.center{
	position:absolute;
	top:50%;
	left:60%;
	transform:translate(-50%,-50%);
	width:400px;
	border-radius:10px;
}
.center form{
	padding:0 40px;
	box-sizing:border-box;
	
}
button[type="submit"]{
	border-radius: 10rem !important;
	width: 50%;
	background-color:#1c1c50;
    color:white;
    height:5vh;
	
}

input[type=email]{
	border:none;
	border-bottom:2px solid black;
}
input[type=password]{
	border:none;
	border-bottom: 2px solid black;
}
.form-row label{
	font-weight: bold;
}

.check h5{
	color:green;
	margin-right:20px;
}
h5{
	font-weight: bold;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-lg" id="navbar">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"><img src="./images/logo.png" alt="" width="180px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><i class="fa-solid fa-bars" style="color: white;"></i></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                  </li>
                  
                  <li class="nav-item">
                    <a class="nav-link" href="about.html">About Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="signup.jsp">Sign Up</a>
                  </li>
                
                </ul>
              </div>
            </div>
          </nav>

<section class="Form my-4 mx-5">
<div class="container">
<div class="row">
<div class="col-lg-7 px-5 pt-5" >
<div class="check">
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg)){
  %>
<h5>Password Changed Successfully!</h5>
<%} %>
<%
if("invalid".equals(msg)){
	%>
<h5>Some thing Went Wrong! Try Again !</h5>
<%} %>
    <form action="forgotPasswordAction.jsp" method="post">
<div class="form-row">
<div class="col-lg-7">
<label for="exampleInputEmail" class="form-label">Email address:</label>
    	<input  required type="email" class="form-control my-2 p-3" id="email" placeholder="Enter email address" name="email">
</div>
</div>
<div class="form-row">
<div class="col-lg-7">
<label for="mobileNumber" class="form-label">Mobile Number:</label>
    	<input required type="number" class="form-control  my-2 p-3"  placeholder="Enter password" name="MobileNumber">
</div>
</div>
<div class="form-row">
<div class="col-lg-7">
<label for="securityQuestion" class="form-label">Security Question</label>
  	<select class="form-control" name="securityQuestion" required>
    <option value="What was your first car?">What was your first car?</option>
    <option value="What is the name of your first pet?">What is the name of your first pet?</option>
    <option value="What is the name of your town?">What is the name of your town?</option>
    </select>
</div>
</div>
<div class="form-row">
<div class="col-lg-7">
<label for="answer" class="form-label">Answer:</label>
    	<input type="text" class="form-control form-control my-2 p-3" id="answer" placeholder="Enter your answer" name="answer">
</div>
</div>
<div class="form-row">
<div class="col-lg-7">
<label for="New Password" class="form-label">New Password:</label>
    	<input type="password" class="form-control form-control my-2 p-3" id="newPassword" placeholder="Enter your new password to set" name="newPassword">
</div>
</div>
<div class="form-row">
<div class="col-lg-7">
<button type="submit" class="btn-1 mt-3 mb-5">Save</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</section>
<script src="js/bootstrap.min.js"></script>
</body>
</html>