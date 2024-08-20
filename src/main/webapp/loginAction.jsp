<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String email=request.getParameter("email");
String password=request.getParameter("password");
String partoneid = email.substring(0,email.indexOf("@"));


if("admin@gmail.com".equals(email)&& "@ad_123".equals(password)){
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
}
else{
	int z=0;
	try{
		Connection con=ConnectionProvider.getConn();
		Statement st=con.createStatement();
		
		ResultSet rs2=st.executeQuery("select ifnull(max(generatenum)+1,1) orderno,concat(substring(date(now()),9,10),ifnull(max(generatenum)+1,1) )max from cart where email='"+email+"'");
		while(rs2.next()){
			String maxno = rs2.getString(1);
			String orderno = rs2.getString(2);
			String orderid = partoneid.concat(orderno);
			session.setAttribute("orderid", orderid);
			session.setAttribute("maxno", maxno);
		}
		
		ResultSet rs=st.executeQuery("select*from users where email='"+email+"' and password='"+password+"'");
		
		while(rs.next()){
			z=1;
			session.setAttribute("email", email);
			response.sendRedirect("home.jsp");
		}

		if(z==0)
			response.sendRedirect("login.jsp?msg=notexist");
	}catch(Exception e){
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
}
%>