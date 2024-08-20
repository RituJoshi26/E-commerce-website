<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/table-style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>
<style>
h5
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h5 class="alert">Product Successfully Updated!</h5>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h5 class="alert">Some thing went wrong! Try again!</h5>
<%} %>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th>Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con=ConnectionProvider.getConn();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select*from product");
    	   while(rs.next()){
    		   
    	   %>
   
          <tr>
            <td data-title="ID"><%=rs.getString(1)%></td>
            <td data-title="Name"><%=rs.getString(2) %></td>
            <td data-title="Category"><%=rs.getString(3)%></td>
            <td data-title="Price"><i class="fa fa-inr"></i> </i><%=rs.getString(4)%></td>
            <td data-title="Status"><%=rs.getString(5) %></td>
            <td data-title="Edit"><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>
         <%
         }
         }catch(Exception e){
        	 System.out.println(e);
         }
         %>
        </tbody>
      </table>
      </div>
      </section>
     

</body>
</html>