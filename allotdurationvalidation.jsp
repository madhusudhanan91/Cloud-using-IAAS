<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>

<body>
<%!
	PreparedStatement st;
	ResultSet rs;
	Connection con=null;
%>

	<%
		String workerid=request.getParameter("workerid");
		String proname=request.getParameter("prname");
		String docname=request.getParameter("docname");
		String stdate=request.getParameter("stdate");
		String enddate=request.getParameter("enddate");
		String prcode=request.getParameter("prcode");
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
		String str="update workerdocument set start_date='"+stdate+"' ,pro_name='"+proname+"' where Workerid='"+workerid+"'";
		try
		{
			st=con.prepareStatement(str);
			st.executeUpdate();
		}
		catch(Exception f)
		{
		
		}
	%>
	
	<%
		String str1="update workerdocument set end_date='"+enddate+"' where Workerid='"+workerid+"'";
		try
		{
			st=con.prepareStatement(str1);
			st.executeUpdate();
		%>
		<jsp:forward page="feedallotduration.html" />
		<%
		}
		catch(Exception f)
		{
		out.println(f);		
		}
	%>

</body>
</html>