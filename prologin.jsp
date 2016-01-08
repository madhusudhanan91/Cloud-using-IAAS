<%@ page language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<body>

<%!
	ResultSet rs1;
	Statement st;
%>
	<%

	String name=(request.getParameter("prname"));
	String empcode=(request.getParameter("empcode"));

	Connection con=null;
	String str1="select * from employment_details where emp_code='"+empcode+"'";	
	try
	{
	
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
		rs1=st.executeQuery(str1);
		%>
		<%
		if(rs1!=null)
		{
		while(rs1.next())
		{
		
		String ss=rs1.getString("emp_pro_involve");
   
		if(ss.equals(name))
		{
		%>
		<jsp:forward page="allotproject.jsp" />
		<%
		}
		else 
		{
		%>
		<jsp:forward page="errorpage.html" />
		<%
		}
		}
		}
		else
		{
		%>
		
		<jsp:forward page="errorpage.html" />	    
		<%
		}
	
	}

	catch(Exception d)
	{

	out.println(d);	
	}
	%>
</body>
</html>
	
