<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
	
<body>
	
	<%!
		ResultSet rs;
		Statement st;
		Statement st1;
		Connection con=null;
	%>

	<%
	
		String user=request.getParameter("userid");
		String pass=request.getParameter("pass");
		String cpass=request.getParameter("cpass");
		String des=request.getParameter("des");
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

		String str="select * from emp_details where emp_code='"+user+"'";
	
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			
			
			while(rs.next())		
			{
					String str2="insert into login values('"+user+"','"+pass+"','"+des+"')";
					try
					{
					st1=con.createStatement();
					
					st1.executeUpdate(str2);
					%>
					<span class="style3"><marquee direction="left">FeedBack Form</marquee></span>
					<p>Thank &quot;U&quot;, Ur details have been registered.</p>
					<font color=red>Your Userid is :<%= user%></font>
`					<br>
					<font color=blue>Your password is:<%= pass %></font>
					<p>Visit again.</p>
					<p>&nbsp;</p>
					<a href="home.jsp">CLICK HERE </a>
					<%

					}
					catch(Exception f)
					{
					out.println(f);
					}
			}
			}
		catch(Exception e)
			{
			out.println(e);
			}
	%>
</body>
</html>