<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/table-style.css">
<title>Change Details</title>
<style>
.container{
	margin-top:100px;
	
}
hr{
	width:20px;
	color:red;
}
h5{
 border-bottom: 2px solid black;
 font-weight: bold;
}

</style>
</head>
<body>

<%
try{
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from users where email='"+email+"'");
	while(rs.next()){
			
%>
<div class="container">
<center>
<h5>Name : <%=rs.getString(1) %></h5>
<hr>
<h5>Email : <%=rs.getString(2) %></h5>
<hr>
<h5>Mobile Number : <%=rs.getString(3) %></h5>
<hr>
<h5>Security Question : <%=rs.getString(4) %></h5>
<hr>

		<br>
		<br>
		<br>
		</div>
		</center>
	<%
	}
}
catch(Exception e){
	System.out.println(e);
}
	%>	
	<script src="js/bootstrap.min.js"></script>
</body>
</html>