<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	<title>	
	valid
	</title>
<body>
	

	<%!
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
	<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		}
		catch(Exception e)
		{
		out.println(e);
		}
	%>
	<%
	
	 String s=request.getParameter("prname");
	out.println(s);
	%>
	<%

	String m="";
	String n="";
	String o="";
	String p="";
	String q="";
	String str2="select * from com_project where pro_name='"+s+"'";
	try
		{
		st=con.createStatement();
		rs=st.executeQuery(str2);
		while(rs.next())
		{
		m=rs.getString(2);
		n=rs.getString(3);
		o=rs.getString(4);
		p=rs.getString(5);
		q=rs.getString(6);
		}
		}
	catch(Exception l)
		{
	out.println(l);
		}
	%>
</body>
</html>
