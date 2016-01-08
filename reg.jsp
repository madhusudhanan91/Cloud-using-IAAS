<%@ page language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<style type="text/css">
<!--
.style3 {
	font-size: x-large;
	color: #660000;
}
-->
</style>
<body background="images/yellow.gif">
<p>
  <%
	String fname=(request.getParameter("fname"));
	String lname=(request.getParameter("lname"));
	String income=(request.getParameter("income"));
	String dd=(request.getParameter("dd"));
	String mm=(request.getParameter("mm"));
	String yy=(request.getParameter("yy"));
	String age=(request.getParameter("age"));
	String sex=(request.getParameter("sex"));
	String add=(request.getParameter("add"));
	String pin=(request.getParameter("pin"));
	String phno=(request.getParameter("phno"));
	String email=(request.getParameter("email"));


%>
<%!
	ResultSet rs1;
	PreparedStatement st;
%>	 
<%
	Connection con=null;
	String str="insert into details values('"+fname+"','"+lname+"','"+income+"','"+dd+"','"+mm+"','"+yy+"','"+age+"','"+sex+"','"+add+"','"+pin+"','"+phno+"','"+email+"')";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		Statement st=con.createStatement();
		st.executeUpdate(str);		
		out.println("success");
			
	}
	catch(Exception d)
	{
	out.println(d.getMessage());	
	}
	%>
</p><span class="style3">

</body>
</html>
	
