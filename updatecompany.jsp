<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>Update</title>
    </head>
    <body>
	<form>
	<% 
	 String email=(String)session.getAttribute("uname");
     String name=request.getParameter("cname");
	 String pass=request.getParameter("pass");
	 String utype=request.getParameter("utype");
	 out.println(email);
	 out.println(name);
	 		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="update reg set password='"+pass+"',usertype='"+utype+"' where email='"+email +"' ";
	
	
	
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	   
		
	    int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("home.jsp");
		}
		
	  out.println("Login Error-please check ur ID and password");
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
             </form>
       </body> 	
</html>