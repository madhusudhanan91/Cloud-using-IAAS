<%@ page import="java.io.*,java.sql.*" errorPage="" %>

<%!
  ResultSet rs= null;
  Statement st = null;
  Connection con = null;
  %>
  
<%
  String a = request.getParameter("prcode");
  
  String s = "select * from addnew where pro_code='"+a+"'";
  
  try
  {
    Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
	st = con.createStatement();
	rs= st.executeQuery(s);
	
	if(rs.next())
	{
	%>
	<jsp:forward page="allotproject2.jsp" />
	<% 
	}
	
	out.println("Please enter available project code");
	
	}
	
	catch(Exception z)
	{
	out.println(z);
	}
	
		con.close();
	st.close();
	
	%>
	
	