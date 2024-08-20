<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
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
 input[type=text]{
	border:none;
	border-bottom:2px solid black;
}
input[type=number]{
	border:none;
	border-bottom:2px solid black;
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
#textbox{
	border:2px solid black;
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
<div class="col-lg-5">
<img src="images/registerpage.webp"  style="margin-top:30px;"class="img-fluid">
</div>
<div class="col-lg-7 px-5 pt-5" >
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h5 id="success">Successfully Registered!</h5>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h5 id="wrong">Some thing Went Wrong! Try Again !</h5>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h5 style="color:red;"id="duplicate">User already exist!</h5>
<%} %>
<script>
  // JavaScript to hide the error message after 2 seconds
  setTimeout(function() {
    var successmsg = document.getElementById('success');
    var wrongmsg = document.getElementById('wrong');
    var duplicatemsg = document.getElementById('duplicate');
    if (successmsg) {
    	successmsg.style.display = 'none';
    }
    else if (wrongmsg) {
    	wrongmsg.style.display = 'none';
      }
    else if (duplicatemsg) {
    	duplicatemsg.style.display = 'none';
      }
  }, 2000); // 2000 milliseconds = 2 seconds
</script>
<form id="reg-form" action="signUpAction.jsp" method="post">
  	<div class="form-row">
<div class="col-lg-7">
    	<label for="name" class="form-label">Name:</label>
    	<input type="text" class="form-control my-2 p-3" id="name" placeholder="Enter name" name="name" required oninput="validateAndConvertToUpper(this)">


  	</div>
  	</div>
  	<div class="form-row">
<div class="col-lg-7">
    	<label for="email" class="form-label">Email Address</label>
    	<input type="email" class="form-control my-2 p-3" id="email" placeholder="Enter email address" name="email" required>
  	</div>
  	</div>
  	<div class="form-row">
<div class="col-lg-7">
    	<label for="Mobilenumber" class="form-label">Mobile Number</label>
    	<input type="text" class="form-control my-2 p-3" id="mobileNumber" placeholder="Enter Mobile Number" name="Mobilenumber" maxlength="10" oninput="this.value = this.value.replace(/[^0-9]/g, '');">

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
    	<label for="answer" class="form-label">Answer</label>
    	<input type="text" class="form-control my-2 p-3" id="answer" placeholder="Enter your answer" name="answer">
  	</div>
  	</div>
  	<div class="form-row">
<div class="col-lg-7">
    	<label for="password" class="form-label">Password</label>
    	<input type="password" class="form-control my-2 p-3" id="password" placeholder="Enter your password" name="password" required>
  	</div>
  	</div>
  	<div class="form-row">
<div class="col-lg-7">
  	<button type="submit" class="btn-1 mt-3 mb-5">Sign Up</button>
  	</div>
  	</div>
</form>
</div>
</div>
</div>
</section>
<script>
  function validateAndConvertToUpper(input) {
    // Regex pattern to allow only alphabetic characters and spaces
    var regex = /^[a-zA-Z\s]*$/;
    
    // Check if the input value matches the regex pattern
    if (!regex.test(input.value)) {
      // If input is invalid, clear the input field
      input.value = input.value.replace(/[^a-zA-Z\s]/g, '');
    }
    
    // Convert input value to uppercase
    input.value = input.value.toUpperCase();
  }
</script>



<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

</body>
</html>