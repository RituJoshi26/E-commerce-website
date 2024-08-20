<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry! Something went wrong</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>

<body>
<div class="container text-center">
<img src="images/error.png"class="img-fluid">
<h3 class="display=3">Sorry! Something went wrong...</h3>
<%=exception %>
<center><a href="index.html" class="btn btn-secondary">Home</a></center>
</div>
</body>
</html>