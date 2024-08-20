<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
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

input[type=text]{
	border:none;
	border-bottom:2px solid black;
}

.form-row label{
	font-weight: bold;
}

.check h5{
	color:red;
	margin-right:20px;
}
h5{
	font-weight: bold;
}
#textbox{
	border:2px solid black;
}

</style>
</head>
<body>
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
                    <a class="nav-link" href="logout.jsp">Logout</a>
                  </li>
                  
                </ul>
                
              </div>
            </div>
          </nav>
             
             
            </div>
          </div>
<section class="Form my-4 mx-5">
<div class="container">
<div class="row">
<div class="col-lg-5">
<img src="images/message.png" class="img-fluid">
</div>
<div class="col-lg-7 px-5 pt-5" >
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h5 style="text-align:center; color:black;">Message successfully sent. Our team will contact you soon!</h5>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="messageUsAction.jsp" method="post">
<div class="form-row">
<div class="col-lg-7">
    	<label for="subject" class="form-label">Enter subject:</label>
    	<input type="text" class="form-control my-2 p-3" id="name" placeholder="Enter subject" name="subject" required>
  	</div>
  	</div>
  	<br>
  	<div class="form-row">
<div class="col-lg-7">
    	<textarea name="body" class="form-control my-2 p-3" id="textbox" cols="50" rows="15" placeholder=" Enter your message"></textarea>
  	</div>
  	</div>
  	<div class="form-row">
<div class="col-lg-7">
  	<button type="submit" class="btn-1 mt-3 mb-5">Send</button>
  	</div>
  	</div>
</form>
</div>
</div>
</div>
</div>
</main>
<br><br><br>
<script src="js/bootstrap.min.js"></script>
</body>
</html>