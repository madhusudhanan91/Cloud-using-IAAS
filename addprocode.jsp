	<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
	<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body,td,th {
	color: #0066FF;
}
body {
	background-color: #FFFFFF;
}
-->
</style></head>
	
	<body>
	
	<%!
		PreparedStatement st,st1;
		Connection con=null;
	%>

	<%
		String prname=request.getParameter("prname");
		String prcode=request.getParameter("prcode");
		String env=request.getParameter("env");
		String plcode=request.getParameter("plcode");
		String clname=request.getParameter("clname");
		String claddr=request.getParameter("claddr");
		String stdate=request.getParameter("stdate");
	
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
		String addpro=new String("insert into addnew values(?,?,?,?,?,?,?);");
		try
		{
			st=con.prepareStatement(addpro);
			st.setString(1,prname);
			st.setString(2,prcode);
			st.setString(3,env);
			st.setString(4,clname);
			st.setString(5,claddr);
			st.setString(6,stdate);
			st.setString(7,plcode);
			st.executeUpdate();
		}
		catch(Exception f)
		{
			out.println(f);
		}
	%>
	<%
		String compro=new String("insert into com_project values(?,?,?,?,?,?,?);");
		try
		{
			st=con.prepareStatement(compro);
			st.setString(1,prname);
			st.setString(2,prcode);
			st.setString(3,clname);
			st.setString(4,claddr);
			st.setString(5," ");
			st.setString(6,plcode);
			st.setString(7,plcode);
			st.executeUpdate();
		}
		catch(Exception m)
		{
			out.println(m);
		}
	%>

	<%
		String empdat=new String("update employment_details set emp_pro_involve='"+prname+"',pro_code='"+prcode+"' where emp_code='"+plcode+"'");
		try
		{
			st1=con.prepareStatement(empdat);
			st1.executeUpdate();
		%>
			<jsp:forward page="feedaddpro.html" />
		<%
		}
		catch(Exception d)
		{
			out.println(d);	
		}
	%>
</body>
</html>