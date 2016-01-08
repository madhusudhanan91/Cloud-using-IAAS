<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
	<head>
	
	</head>
<body>
	
	<%!
		ResultSet rs;
		Statement st;
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
			
			if(rs==null)

			{
			%>
			<jsp:forward page="errorpage.html" />
			<%
			}
			else
			{
			%>
			<jsp:forward page="sun.jsp" />
			<%
			}
			}
		catch(Exception e)
			{
			out.println(e.getMessage());
			}
	%>
</body>
</html>