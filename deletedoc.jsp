<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<html>
  <body>

<%
  	Connection con= null;   
  	
  	String temp=null;
	String name=null;
  	
  	name=request.getParameter("name");
  	  	  
   try
   {    Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
   		PreparedStatement ps=con.prepareStatement("delete from filestored where name=?");
   		ps.setString(1,name);

       	int x=ps.executeUpdate();
       	
       	if(x!=0)
       	{
 			response.sendRedirect("uploadview.jsp");
 	}    	
    }
    catch(Exception e)
    {}
    finally
    {
    con.close();
    }
   %>
  </body>
</html>
