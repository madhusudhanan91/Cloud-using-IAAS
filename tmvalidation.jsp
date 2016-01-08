<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	
<body>
	<%!
		PreparedStatement st1,st2;
		Statement st;
		Connection con=null;
		ResultSet rs;
	
	%>

	<%
		try		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
			
		}	catch(Exception e)		{		out.println(e);		}
	%>

	<%
		String user=request.getParameter("tmcode");  // tmcode docname glcode odate cdate status verby perwork dateext
		System.out.println("User:"+user);
		String dname=request.getParameter("docname");
		String gcode=request.getParameter("glcode");
		String odate=request.getParameter("odate");
		String cdate=request.getParameter("cdate");
		String status=request.getParameter("status");
		System.out.println("status:"+status);
		String verby=request.getParameter("verby");
		String perwork=request.getParameter("perwork");
		String dateext=request.getParameter("dateext");
		System.out.println("date extended:"+dateext);
		String b="";
		
		String str3="update employment_details set pro_status='"+status+"' where emp_code='"+user+"'";
		try		{
		st2=con.prepareStatement(str3);
		st2.executeUpdate();
		System.out.println("");
		}	catch(Exception m)	{System.out.println("Excep"+m);}
		
		String str2="update status set close_date='"+cdate+"',open_date='"+odate+"',status='"+status+"',verifiedby='"+verby+"',per_work='"+perwork+"',glcode='"+gcode+"' where emp_code='"+user+"'";
			try
			{
			st2=con.prepareStatement(str2);
			st2.executeUpdate();
			if(dateext.equals("Yes")){
				Statement st = con.createStatement();
				st.executeUpdate("update dateex set extends='Yes' where empid in('"+user+"')");
				st.executeUpdate("update dateex set extends='Yes' where empid in('"+user+"')");
				System.out.println("update dateex set extends='Yes' where empid in('"+user+"')");
				System.out.println("Date extended");
			}
		%>
		<jsp:forward page="feedback.html" />
		<%	
		}	catch(Exception l)	{out.println(l);}
	%>
</body>
</html>		
	