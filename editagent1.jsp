<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
    </head>
    <body>
	<form>
	<% 
	 String email=(String)session.getAttribute("uname");
     String name=request.getParameter("cname");
	 
			
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="update reg set password='"+pass+"' where email='"+email +"' && name='"+name+"'  ";
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	   
		
	    int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("index.html");
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