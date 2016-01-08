<%@ page language="java" import ="java.sql.*"%>
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
	String empid = request.getParameter("empcode");
	int days = Integer.parseInt(request.getParameter("days"));
	
	Statement st = con.createStatement();
	st.executeUpdate("Update dateex set days="+days+" where empid in('"+empid+"')");
	System.out.println("Days added");
	response.sendRedirect("update3.jsp");
	
	//empid	procode	extends	days
//TM_001	p001	Yes	0
	
%>



