<%@ page language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<body>

<%!
	ResultSet rs1;
	Statement st;
%>
	<%

	String name=request.getParameter("user");
	String word=request.getParameter("pass");

	Connection con=null;
	String str1="select * from login where username='"+name+"' and password='"+word+"'";	
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
		rs1=st.executeQuery(str1);
		%>
		<%
		rs1.next();
		session.putValue("empcode",rs1.getString(1));
		session.putValue("name",rs1.getString(2));
		String ss=rs1.getString(3);
		
   
		if(ss.equals("PM"))
		{
		%>
		<jsp:forward page="hrmenu.jsp" />
		<%
		}
		else if(ss.equals("PL"))
			{
		
		%>
		<jsp:forward page="plmenu1.jsp" />
		<%
		}
		else if(ss.equals("TL"))
		{ 
		%>
		<jsp:forward page="glmenu.html" />
		<%
		}
		else if(ss.equals("TM"))
		{
		%>
		<jsp:forward page="tmmenu.jsp" />
		<%
		}
		
		else
		{
		out.println("No page to display");
		}
	    
		%>
		<jsp:forward page="homepage.jsp" />
	<%
	}

	catch(Exception d)
	{ System.out.println(d);
	%>
	
	
	<%
		
	}
	%>
</body>
</html>
	
