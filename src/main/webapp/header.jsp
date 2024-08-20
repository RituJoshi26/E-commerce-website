<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
.navbar-brand{
	margin-right:70px;
}
.nav-link{
	font-size: 20px;
	
}
.nav-link:hover{
	text-decoration:underline;
}
.search-container{
	
	font-size: 20px;
}
.search-container button{
	width:30px;
}
</style>
</head>
    <!--Header-->
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
                    <a class="nav-link" href="logout.jsp">Logout</a>
                  </li>
                  
                </ul>
                <div class="search-container">
             <form action="searchHome.jsp" method="post">
             <input type="text" placeholder=" Search" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
             
            </div>
              </div>
            </div>
          </nav>
             
             
            
          
           <br>
           <!--table-->
