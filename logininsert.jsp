<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String username=request.getParameter("username");
	String pass=request.getParameter("password");
	session.setAttribute("uname",username);
	session.setAttribute("pass",pass);
	
	
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
	 
	 		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String utype=null;
	String sql="select * from reg where email='"+username+"' && password='"+pass+"'";
	
	try
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(username.equalsIgnoreCase("admin")&& pass.equalsIgnoreCase("admin"))
		{
		
       response.sendRedirect("service2.jsp");
	    
		}
	    if(rs.next())
	     {
		 utype=rs.getString(5);
		 session.setAttribute( "email", username );
		 if(utype.equalsIgnoreCase("On Demand"))
		 {
		 String sql1="insert into log values('"+username+"','"+pass+"','"+utype+"','"+strDateNew+"')";
		  st.executeUpdate(sql1);
		 %>	
		<jsp:forward page="service.jsp"/>
	    	<%
	       }
		   else
		   {
		   String sql1="insert into log values('"+username+"','"+pass+"','"+utype+"','"+strDateNew+"')";
		  st.executeUpdate(sql1);
		   %>
		 <jsp:forward page="service1.jsp"/>
		
			<% } 		    
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