<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String incdec=request.getParameter("quantity");
String orderid=session.getAttribute("orderid").toString();
int price=0;
int total=0;
int quantity=0;
int final_total=0;
try{
	Connection con=ConnectionProvider.getConn();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select*from cart where orderid='"+orderid+"' and product_id='"+id+"'");
	while(rs.next()){
		price=rs.getInt(4);
		total=rs.getInt(5);
		quantity=rs.getInt(3);
	}
	if(quantity==1 && incdec.equals("dec")){
		response.sendRedirect("myCart.jsp?msg=notPossible");
	}
	else if(quantity!=1 && incdec.equals("dec")){
		total=total-price;
		quantity=quantity-1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where orderid='"+orderid+"' and product_id='"+id+"'");
		response.sendRedirect("myCart.jsp?msg=dec");
	}
	else{
		total=total+price;
		quantity=quantity+1;
		st.executeUpdate("update cart set total='"+total+"',quantity='"+quantity+"' where orderid='"+orderid+"' and product_id='"+id+"'");
		response.sendRedirect("myCart.jsp?msg=inc");
	}
}catch(Exception e){
	System.out.println(e);
}
%>