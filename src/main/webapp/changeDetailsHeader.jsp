<%@page errorPage="error.jsp"%>
<html>
<head>
<style>
.navbar-brand{
	margin-right:70px;
}
.nav-link{
	font-size: 30px;
	margin-right:50px;
}
.nav-link:hover{
	text-decoration:underline;
}
</style>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<br>
<div class="topnav sticky">

<%String email=session.getAttribute("email").toString(); %>
<nav class="navbar navbar-expand-lg" id="navbar">
            <div class="container-fluid">
              <a class="navbar-brand" href="index.html"><img src="./images/logo.png" alt="" width="180px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><i class="fa-solid fa-bars" style="color: white;"></i></span>
              </button>
             
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href=""><%out.println(email); %></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
                  </li>
                  
                  <li class="nav-item">
                    <a class="nav-link" href="changePassword.jsp">Change Password</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="addChangeAddress.jsp">Add or change address</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="changeSecurityQuestion.jsp">Change Security Question</a>
                  </li>
                  
                  <li class="nav-item">
                    <a class="nav-link" href="changeMobileNumber.jsp">Change Mobile Number</a>
                  </li>
                  
                </ul>
                </div>
                </div>
                </nav>
                </div>
                
</html>