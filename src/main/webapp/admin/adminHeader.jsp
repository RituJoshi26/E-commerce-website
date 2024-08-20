<%@page errorPage="../error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
.navbar-brand{
	margin-right:70px;
}

.nav-link:hover{
	text-decoration:underline;
}

</style>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

</head>
<body>
    <!--Header-->
   <%String email=session.getAttribute("email").toString(); %>
            <nav class="navbar navbar-expand-lg" id="navbar">
            <div class="container-fluid">
              <a class="navbar-brand" href="../index.html"><img src="../images/logo.png" alt="" width="180px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><i class="fa-solid fa-bars" style="color: white;"></i></span>
              </button>
             
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="addNewProduct.jsp">Add new product</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="allProductEditProduct.jsp">All Products and Edit Products</a>
                  </li>
                  
                  <li class="nav-item">
                    <a class="nav-link" href="messagesReceived.jsp">Messages Received</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="ordersReceived.jsp">Orders Received</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="cancelOrders.jsp">Orders Cancelled</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="deliveredOrders.jsp">Orders Delivered</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="../logout.jsp">Logout</a>
                  </li>
                  
                </ul>
                
              </div>
            </div>
          </nav>
           <script src="../js/bootstrap.min.js"></script>
           </body>
           </html>