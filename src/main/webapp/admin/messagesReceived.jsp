<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>

<html>
<head>
<link href="../css/table-style.css" rel="stylesheet">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Messages Received</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<section class="bg-light p-5">
<div class="table-responsive" id="mytable">
<table class="table bg-white">
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Email</th>
            <th scope="col">Subject</th>
            <th scope="col">Body</th>
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con=ConnectionProvider.getConn();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select*from message");
    	   while(rs.next())
    	   {
       
       %>
          <tr>
            <td data-title="ID"><%=rs.getString(1) %></td>
            <td data-title="Email"> <%=rs.getString(2) %></td>
            <td data-title="Subject"><%=rs.getString(3) %></td>
            <td data-title="Body"><%=rs.getString(4) %></td>
          </tr>
         <%
         }
         }
         catch(Exception e){
        	 System.out.println(e);
         }
         %>
        </tbody>
      </table>
      </div>
      </section>
      
<script src="../js/bootstrap.min.js"></script>
</body>
</html>